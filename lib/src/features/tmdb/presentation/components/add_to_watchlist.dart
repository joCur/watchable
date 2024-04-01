import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../constants/locale_keys.dart';
import '../../../../extensions/build_context_extensions.dart';
import '../../../group_media/presentation/modals/select_user_group_page.dart';
import '../../../groups/extensions/media_details_extensions.dart';
import '../../domain/media.dart';

class AddToWatchlist extends ConsumerWidget {
  final Media media;

  const AddToWatchlist(this.media, {super.key});

  _showModal(BuildContext context) {
    WoltModalSheet.show(
      context: context,
      enableDrag: true,
      useSafeArea: true,
      pageListBuilder: (ctx) => [
        SelectUserGroupPageBuilder.build(ctx, media.id, media.getMediaType()),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16, vertical: Sizes.p8),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => _showModal(context), child: Text(LocaleKeys.discover_addToGroup.tr())),
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
