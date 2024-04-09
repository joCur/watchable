// deno-lint-ignore-file
import { serve } from "https://deno.land/std@0.177.0/http/server.ts";
import * as OneSignal from "https://esm.sh/@onesignal/node-onesignal@2.0.1-beta2";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.7.1";
import { corsHeaders } from "../_shared/cors.ts";
import { Database } from "../_shared/database.types.ts";

const _TmdbApiKey = Deno.env.get("TMDB_API_KEY")!;

const _OnesignalAppId_ = Deno.env.get("ONESIGNAL_APP_ID")!;
const _OnesignalRestApiKey_ = Deno.env.get("ONESIGNAL_REST_API_KEY")!;
const configuration = OneSignal.createConfiguration({
  appKey: _OnesignalRestApiKey_,
});

const onesignal = new OneSignal.DefaultApi(configuration);

serve(async (req: Request) => {
  // This is needed if you're planning to invoke your function from a browser.
  if (req.method === "OPTIONS") {
    return new Response("ok", { headers: corsHeaders });
  }

  try {
    const { record } = await req.json();

    const supabaseClient = createClient<Database>(
      Deno.env.get("SUPABASE_URL") ?? "",
      Deno.env.get("SUPABASE_ANON_KEY") ?? "",
      {
        global: {
          headers: { Authorization: req.headers.get("Authorization")! },
        },
      },
    );

    const { data: group } = await supabaseClient.from("groups").select("*").eq(
      "id",
      record.group_id,
    ).single();
    console.log("group", group);

    const { data: group_users } = await supabaseClient.from("group_users")
      .select("*").eq("group_id", record.group_id);
    console.log("group_users", group_users);

    const userIds = group_users?.map((e) => e.user_id) ?? [];
    console.log("userIds", userIds);

    const { data: profiles } = await supabaseClient.from("profiles").select("*")
      .neq("id", record.added_by)
      .in("id", userIds);
    console.log("profiles", profiles);

    const {data: creator } = await supabaseClient.from("profiles").select("*")
      .eq("id", record.added_by).single()
    console.log("creator", creator);

    let mediaTitle: string | undefined;
    let mediaImage: string | undefined;
    if (record.media_type === "movie") {
      const tmdbResponse = await fetch(
        `https://api.themoviedb.org/3/movie/${record.tmdb_id}`,
        {
          method: "GET",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${_TmdbApiKey}`,
          },
        },
      );
      const tmdbJson = await tmdbResponse.json();
      mediaTitle = tmdbJson["title"];
      mediaImage = tmdbJson["poster_path"];
    } else {
      const tmdbResponse = await fetch(
        `https://api.themoviedb.org/3/tv/${record.tmdb_id}`,
        {
          method: "GET",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${_TmdbApiKey}`,
          },
        },
      );
      const tmdbJson = await tmdbResponse.json();
      mediaTitle = tmdbJson["name"];
      mediaImage = tmdbJson["poster_path"];
    }

    console.log("mediaTitle", mediaTitle);
    console.log("mediaImage", mediaImage);

    const notification = new OneSignal.Notification();
    notification.app_id = _OnesignalAppId_;
    notification.include_external_user_ids = profiles?.map((e) => e.id) ?? [];
    notification.template_id = "45a96c56-db6b-484d-8131-dd6fc299d6e0";
    notification.custom_data = {
      user: creator?.username,
      media: mediaTitle,
      group: group?.name,
      image: mediaImage,
    };

    const onesignalApiRes = await onesignal.createNotification(notification);

    return new Response(
      JSON.stringify({ onesignalResponse: onesignalApiRes }),
      {
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      },
    );
  } catch (err) {
    console.error("Failed to create OneSignal notification", err);
    return new Response("Server error.", {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
      status: 400,
    });
  }
});

/* To invoke locally:

  1. Run `supabase start` (see: https://supabase.com/docs/reference/cli/supabase-start)
  2. Make an HTTP request:

  curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/notify_new_group_media' \
    --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0' \
    --header 'Content-Type: application/json' \
    --data '{"name":"Functions"}'

*/
