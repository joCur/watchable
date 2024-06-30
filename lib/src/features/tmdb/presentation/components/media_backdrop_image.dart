import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../constants/app_sizes.dart';
import '../../../common/presentation/shimmer/shimmer_colors.dart';

class _ShimmerBackdropImage extends StatelessWidget {
  const _ShimmerBackdropImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Sizes.p8),
      child: Shimmer.fromColors(
        baseColor: ShimmerColors.defaultShimmerBaseColor,
        highlightColor: ShimmerColors.defaultShimmerHighlightColor,
        child: AspectRatio(aspectRatio: 1280 / 720, child: Container(color: ShimmerColors.defaultShimmerBackColor, width: double.infinity)),
      ),
    );
  }
}

class MediaBackdropImage extends StatelessWidget {
  final String? backdropPath;

  const MediaBackdropImage(this.backdropPath, {super.key});

  @override
  Widget build(BuildContext context) {
    if (backdropPath == null) {
      return const _ShimmerBackdropImage();
    }

    return CachedNetworkImage(
      imageUrl: "https://image.tmdb.org/t/p/w1280${backdropPath!}",
      fit: BoxFit.cover,
      placeholder: (_, __) => const _ShimmerBackdropImage(),
    );
  }
}
