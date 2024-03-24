import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'video.dart';

part 'videos.freezed.dart';
part 'videos.g.dart';

@freezed
class Videos with _$Videos {
  const factory Videos(
    int id,
    List<Video> results,
  ) = _Videos;

  factory Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);
}
