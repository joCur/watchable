import 'package:flutter/material.dart';
import '../../../../extensions/build_context_extensions.dart';
import '../../domain/media_details.dart';

import '../../../../constants/app_sizes.dart';

class AddToWatchlist extends StatelessWidget {
  final MediaDetails media;
  final Function()? onPressed;

  const AddToWatchlist(this.media, {this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16, vertical: Sizes.p8),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: onPressed, child: const Text("Add to watchlist")),
              ),
            ),
            gapW16,
            const Icon(Icons.star, size: Sizes.p24, color: Colors.orange),
            gapW4,
            Text(media.voteAverage.roundToDouble().toString(), style: context.textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}
