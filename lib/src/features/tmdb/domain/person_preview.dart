import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_preview.dart';

part 'person_preview.freezed.dart';
part 'person_preview.g.dart';

@freezed
class PersonPreview with _$PersonPreview implements Media {
  @Implements<Media>()
  const factory PersonPreview({
    required bool adult,
    required int id,
    required String overview,
    @JsonKey(name: "poster_path") required String posterPath,
    @JsonKey(name: "vote_average") required double voteAverage,
    @JsonKey(name: "backdrop_path") String? backdropPath,
  }) = _PersonPreview;

  factory PersonPreview.fromJson(Map<String, dynamic> json) => _$PersonPreviewFromJson(json);
}
