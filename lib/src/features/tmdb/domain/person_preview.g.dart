// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonPreviewImpl _$$PersonPreviewImplFromJson(Map<String, dynamic> json) =>
    _$PersonPreviewImpl(
      adult: json['adult'] as bool,
      id: json['id'] as int,
      overview: json['original_name'] as String,
      title: json['name'] as String,
      posterPath: json['profile_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      voteAverage: (json['popularity'] as num).toDouble(),
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
    };
