import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:watchable/src/features/common/presentation/shimmer/shimmer_colors.dart';

class ShimmerAvatar extends StatelessWidget {
  final double? size;
  final ImageProvider? backgroundImage;

  const ShimmerAvatar({this.backgroundImage, this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size,
      backgroundImage: backgroundImage,
      backgroundColor: Colors.transparent,
      child: backgroundImage != null
          ? null
          : Shimmer.fromColors(
              baseColor: ShimmerColors.defaultShimmerBaseColor,
              highlightColor: ShimmerColors.defaultShimmerHighlightColor,
              child: const CircleAvatar(backgroundColor: ShimmerColors.defaultShimmerBackColor),
            ),
    );
  }
}
