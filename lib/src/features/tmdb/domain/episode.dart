import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class Episode with _$Episode {
  const factory Episode({
    required int id,
    @JsonKey(name: "episode_number") required int episodeNumber,
    @JsonKey(name: "air_date") required DateTime airDate,
    required String name,
    required String overview,
    @JsonKey(name: "still_path") required String stillPath,
    @JsonKey(name: "vote_average") required double voteAverage,
    @JsonKey(name: "vote_count") required int voteCount,
    required int runtime,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) => _$EpisodeFromJson(json);
}
