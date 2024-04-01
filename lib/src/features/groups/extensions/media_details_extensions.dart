import '../../group_media/domain/group_media_type.dart';
import '../../tmdb/domain/media_details.dart';
import '../../tmdb/domain/movie_details.dart';
import '../../tmdb/domain/tv_details.dart';

extension GroupMediaExtensions on MediaDetails {
  GroupMediaType getMediaType() {
    if (this is MovieDetails) {
      return GroupMediaType.movie;
    } else if (this is TvDetails) {
      return GroupMediaType.tv;
    } else {
      throw Exception('Unknown media type');
    }
  }
}
