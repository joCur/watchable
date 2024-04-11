import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../constants/app_sizes.dart';
import '../../../common/presentation/shimmer/shimmer_colors.dart';

class ShimmerPosterImage extends StatelessWidget {
  const ShimmerPosterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Sizes.p8),
      child: Shimmer.fromColors(
        baseColor: ShimmerColors.defaultShimmerBaseColor,
        highlightColor: ShimmerColors.defaultShimmerHighlightColor,
        child: Container(color: ShimmerColors.defaultShimmerBackColor, height: 150, width: 100),
      ),
    );
  }
}
