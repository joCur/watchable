import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/group_media/domain/media_reaction.dart';
import 'package:watchable/src/features/group_media/presentation/components/media_voting_widget.dart';
import 'package:watchable/src/features/profile/data/profile_repository.dart';
import 'package:watchable/src/features/profile/presentation/components/profile_avatar.dart';
import 'package:watchable/src/features/startup/application/startup_providers.dart';

import '../../data/group_media_repository.dart';

class MediaReactionWidget extends ConsumerWidget {
  final String mediaId;

  const MediaReactionWidget(this.mediaId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reactions = ref.watch(watchReactionsByMediaIdProvider(mediaId));
    final ownReaction = ref.watch(findOwnReactionByMediaIdProvider(mediaId));
    final isLoading = reactions.maybeWhen(data: (_) => false, orElse: () => true);
    final userId = ref.watch(supabaseProvider).auth.currentUser!.id;

    return isLoading
        ? const SizedBox()
        : ownReaction == null
            ? MediaVotingWidget(onVote: (vote) => ref.read(groupMediaRepositoryProvider).createReaction(userId, mediaId, vote))
            : ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 100, maxHeight: 20),
                child: WidgetStack(
                  positions: RestrictedPositions(
                    maxCoverage: 0.7,
                    minCoverage: 0.5,
                    align: StackAlign.right,
                  ),
                  buildInfoWidget: (surplus) {
                    return Center(child: Text('+$surplus', style: context.textTheme.headlineSmall));
                  },
                  stackedWidgets: reactions.value!
                      .where((r) => r.reaction == MediaReaction.watch)
                      .map((r) => ProfileAvatar(ref.watch(getProfileByIdProvider(r.userId))))
                      .toList(),
                ),
              );
  }
}
