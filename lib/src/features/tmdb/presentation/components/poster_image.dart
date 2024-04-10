import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import '../../../../constants/app_sizes.dart';

class PosterImage extends StatelessWidget {
  final String? posterPath;

  const PosterImage(this.posterPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Sizes.p8),
      child: posterPath == null ? null : FancyShimmerImage(imageUrl: "https://image.tmdb.org/t/p/w92$posterPath", height: 150, width: 100),
    );
  }
}
