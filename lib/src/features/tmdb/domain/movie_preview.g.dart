// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviePreviewImpl _$$MoviePreviewImplFromJson(Map<String, dynamic> json) =>
    _$MoviePreviewImpl(
      adult: json['adult'] as bool,
      id: json['id'] as int,
      overview: json['overview'] as String,
      title: json['title'] as String,
      posterPath: json['poster_path'] as String?,
      voteAverage: (json['vote_average'] as num).toDouble(),
      backdropPath: json['backdrop_path'] as String?,
    );

Map<String, dynamic> _$$MoviePreviewImplToJson(_$MoviePreviewImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'overview': instance.overview,
      'title': instance.title,
      'poster_path': instance.posterPath,
      'vote_average': instance.voteAverage,
      'backdrop_path': instance.backdropPath,
    };
