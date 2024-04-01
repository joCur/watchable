import '../../group_media/domain/group_media_type.dart';
import '../../tmdb/domain/media.dart';

extension GroupMediaExtensions on Media {
  GroupMediaType getMediaType() {
    if (this is Movie) {
      return GroupMediaType.movie;
    } else if (this is Tv) {
      return GroupMediaType.tv;
    } else {
      throw Exception('Unknown media type');
    }
  }
}
