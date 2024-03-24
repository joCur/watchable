import 'package:json_annotation/json_annotation.dart';

abstract class Media {
  bool get adult;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  List<int> get genreIds;
  int get id;
  String get originalLanguage;
  String get originalTitle;
  String get overview;
  double get popularity;
  String get posterPath;
  String get releaseDate;
  String get title;
  bool get video;
  double get voteAverage;
  int get voteCount;
}
