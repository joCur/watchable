import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/common/presentation/shimmer/shimmer_colors.dart';

class ShimmerText extends StatelessWidget {
  final double? width;
  final double? height;

  const ShimmerText({this.width, this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 200,
      height: height ?? context.textTheme.bodyMedium!.height,
      child: Shimmer.fromColors(
        baseColor: ShimmerColors.defaultShimmerBaseColor,
        highlightColor: ShimmerColors.defaultShimmerHighlightColor,
        child: Container(color: ShimmerColors.defaultShimmerBackColor),
      ),
    );
  }
}
