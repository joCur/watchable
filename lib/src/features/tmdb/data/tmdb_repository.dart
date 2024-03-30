import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tmdb_api/tmdb_api.dart';

import '../../common/application/application_language.dart';
import '../application/search_controller.dart';
import '../domain/media_preview.dart';
import '../domain/movie_details.dart';
import '../domain/movie_preview.dart';
import '../domain/pagination.dart';
import '../domain/person_preview.dart';
import '../domain/tv_details.dart';
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
Future<Pagination<MediaPreview>> getTrending(GetTrendingRef ref, TimeWindow timeWindow, int page) async {
  final tmdb = ref.watch(tmdbProvider);
  final response = await tmdb.v3.trending.getTrending(mediaType: MediaType.all, timeWindow: TimeWindow.week, page: page);

  return Pagination<MediaPreview>.fromJson(response.toJsonMap(), (json) {
    final map = json as Map<String, dynamic>;
    switch (map['media_type']) {
      case 'tv':
        return TvPreview.fromJson(map);
      case 'person':
        return PersonPreview.fromJson(map);
      case 'movie':
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
Future<TvDetails> getTvById(GetTvByIdRef ref, int id) async {
  final tmdb = ref.watch(tmdbProvider);
  final response = await tmdb.v3.tv.getDetails(id);

  return TvDetails.fromJson(response.toJsonMap());
}

@riverpod
Future<Videos> getMovieVideosById(GetMovieVideosByIdRef ref, int id) async {
  final tmdb = ref.watch(tmdbProvider);
  final response = await tmdb.v3.movies.getVideos(id);

  return Videos.fromJson(response.toJsonMap());
}

@riverpod
Future<Videos> getTvVideosById(GetTvVideosByIdRef ref, int id) async {
  final tmdb = ref.watch(tmdbProvider);
  final response = await tmdb.v3.tv.getVideos(id.toString());

  return Videos.fromJson(response.toJsonMap());
}

@riverpod
Future<Pagination<MediaPreview>> queryMedia(QueryMediaRef ref, String query, int page) async {
  final mediaType = ref.watch(searchControllerProvider);
  final tmdb = ref.watch(tmdbProvider);

  switch (mediaType) {
    case MediaType.all:
      final response = await tmdb.v3.search.queryMulti(query, page: page);
      return Pagination<MediaPreview>.fromJson(response.toJsonMap(), (json) {
        final map = json as Map<String, dynamic>;
        switch (map['media_type']) {
          case 'tv':
            return TvPreview.fromJson(map);
          case 'person':
            return PersonPreview.fromJson(map);
          case 'movie':
          default:
            return MoviePreview.fromJson(map);
        }
      });
    case MediaType.movie:
      final response = await tmdb.v3.search.queryMovies(query, page: page);
      return Pagination<MediaPreview>.fromJson(response.toJsonMap(), (json) => MoviePreview.fromJson(json as Map<String, dynamic>));
    case MediaType.tv:
      final response = await tmdb.v3.search.queryTvShows(query, page: page);
      return Pagination<MediaPreview>.fromJson(response.toJsonMap(), (json) => TvPreview.fromJson(json as Map<String, dynamic>));
    default:
      throw UnimplementedError();
  }
}
