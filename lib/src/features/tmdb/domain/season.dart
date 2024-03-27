import 'package:freezed_annotation/freezed_annotation.dart';

part 'season.freezed.dart';
part 'season.g.dart';

@freezed
class Season with _$Season {
  const factory Season(
    int id,
    @JsonKey(name: "season_number") int seasonNumber,
    @JsonKey(name: "air_date") DateTime airDate,
    @JsonKey(name: "episode_count") int episodeCount,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "overview") String overview,
    @JsonKey(name: "poster_path") String posterPath,
    @JsonKey(name: "vote_average") double voteAverage,
  ) = _Season;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}
