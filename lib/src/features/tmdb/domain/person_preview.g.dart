// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonPreviewImpl _$$PersonPreviewImplFromJson(Map<String, dynamic> json) =>
    _$PersonPreviewImpl(
      adult: json['adult'] as bool,
      id: json['id'] as int,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      backdropPath: json['backdrop_path'] as String?,
    );

Map<String, dynamic> _$$PersonPreviewImplToJson(_$PersonPreviewImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'vote_average': instance.voteAverage,
      'backdrop_path': instance.backdropPath,
    };
