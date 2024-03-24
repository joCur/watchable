import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tmdb_api/tmdb_api.dart';

import '../../common/application/application_language.dart';
import '../domain/media_preview.dart';
import '../domain/movie_details.dart';
import '../domain/movie_preview.dart';
import '../domain/pagination.dart';
import '../domain/tv_preview.dart';
import '../domain/videos.dart';
import '../extensions/map_extensions.dart';

part 'tmdb_repository.g.dart';

@riverpod
TMDB tmdb(TmdbRef ref) {
  final language = ref.watch(applicationLanguageProvider);
  return TMDB(
    ApiKeys(
      '68a86e7230acb2fbddd0759614762245',
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2OGE4NmU3MjMwYWNiMmZiZGRkMDc1OTYxNDc2MjI0NSIsInN1YiI6IjVlMDIwMDcxMDI4NDIwMDAxOWIwZWZiZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.AtyQGYeAgOUPIBgeUNV_x7oZguXyxvLPFY9C7z3z9U0',
    ),
    defaultLanguage: language,
  );
}

@riverpod
Future<Pagination<Media>> getTrending(GetTrendingRef ref, TimeWindow timeWindow, int page) async {
  final tmdb = ref.watch(tmdbProvider);
  final response = await tmdb.v3.trending.getTrending(mediaType: MediaType.movie, timeWindow: TimeWindow.week, page: page);

  if (response["results"] is List<Map<dynamic, dynamic>>) {
    final results = response["results"] as List<Map<dynamic, dynamic>>;
    for (final result in results) {
      if (result["media_type"] == MediaType.person) {
        results.remove(result);
      }
    }
  }

  return Pagination<Media>.fromJson(response.toJsonMap(), (json) {
    final map = json as Map<String, dynamic>;
    switch (map['media_type']) {
      case MediaType.tv:
        return TvPreview.fromJson(map);
      case MediaType.movie:
      default:
        return MoviePreview.fromJson(map);
    }
  });
}

@riverpod
Future<MovieDetails> getMovieById(GetMovieByIdRef ref, int id) async {
  final tmdb = ref.watch(tmdbProvider);
  final response = await tmdb.v3.movies.getDetails(id);

  return MovieDetails.fromJson(response.toJsonMap());
}

@riverpod
Future<Videos> getMovieVideosById(GetMovieVideosByIdRef ref, int id) async {
  final tmdb = ref.watch(tmdbProvider);
  final response = await tmdb.v3.movies.getVideos(id);

  return Videos.fromJson(response.toJsonMap());
}
