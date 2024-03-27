import 'genre.dart';
import 'language.dart';

abstract class MediaDetails {
  int get id;
  bool get adult;
  String get title;
  String get overview;
  String get posterPath;
  String get backdropPath;
  double get voteAverage;
  List<Language> get spokenLanguages;
  DateTime get releaseDate;
  String get status;
  List<Genre> get genres;
}
