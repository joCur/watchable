// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvPreviewImpl _$$TvPreviewImplFromJson(Map<String, dynamic> json) =>
    _$TvPreviewImpl(
      adult: json['adult'] as bool,
      id: json['id'] as int,
      overview: json['overview'] as String,
      title: json['name'] as String,
      posterPath: json['poster_path'] as String?,
      voteAverage: (json['vote_average'] as num).toDouble(),
      backdropPath: json['backdrop_path'] as String?,
    );

Map<String, dynamic> _$$TvPreviewImplToJson(_$TvPreviewImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'overview': instance.overview,
      'name': instance.title,
      'poster_path': instance.posterPath,
      'vote_average': instance.voteAverage,
      'backdrop_path': instance.backdropPath,
    };
