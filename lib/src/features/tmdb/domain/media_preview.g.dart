// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviePreviewImpl _$$MoviePreviewImplFromJson(Map<String, dynamic> json) =>
    _$MoviePreviewImpl(
      json['adult'] as bool,
      (json['id'] as num).toInt(),
      json['overview'] as String,
      json['title'] as String,
      json['poster_path'] as String?,
      (json['vote_average'] as num).toDouble(),
      json['backdrop_path'] as String?,
      $type: json['media_type'] as String?,
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
      'media_type': instance.$type,
    };

_$TvPreviewImpl _$$TvPreviewImplFromJson(Map<String, dynamic> json) =>
    _$TvPreviewImpl(
      json['adult'] as bool,
      (json['id'] as num).toInt(),
      json['original_name'] as String,
      json['name'] as String,
      json['poster_path'] as String?,
      json['backdrop_path'] as String?,
      (json['popularity'] as num).toDouble(),
      $type: json['media_type'] as String?,
    );

Map<String, dynamic> _$$TvPreviewImplToJson(_$TvPreviewImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'original_name': instance.overview,
      'name': instance.title,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'popularity': instance.voteAverage,
      'media_type': instance.$type,
    };

_$PersonPreviewImpl _$$PersonPreviewImplFromJson(Map<String, dynamic> json) =>
    _$PersonPreviewImpl(
      json['adult'] as bool,
      (json['id'] as num).toInt(),
      json['original_name'] as String,
      json['name'] as String,
      json['profile_path'] as String?,
      json['backdrop_path'] as String?,
      (json['popularity'] as num).toDouble(),
      $type: json['media_type'] as String?,
    );

Map<String, dynamic> _$$PersonPreviewImplToJson(_$PersonPreviewImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'original_name': instance.overview,
      'name': instance.title,
      'profile_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'popularity': instance.voteAverage,
      'media_type': instance.$type,
    };
