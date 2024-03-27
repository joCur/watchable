import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:watchable/src/constants/app_sizes.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/tmdb/domain/media_details.dart';

class Tagline extends StatelessWidget {
  final MediaDetails item;
  final int runtime;
  final int? episodeCount;
  final int? seasonCount;

  const Tagline(this.item, {required this.runtime, this.episodeCount, this.seasonCount, super.key});

  Widget _buildCountIcon(BuildContext context, IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: Sizes.p8, color: context.colorScheme.error),
        gapW4,
        Text(text, style: context.textTheme.bodySmall!.copyWith(color: Colors.grey)),
      ],
    );
  }

  Widget _buildItem(BuildContext context, IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: Sizes.p16, color: Colors.grey),
        gapW4,
        Text(text, style: context.textTheme.bodySmall!.copyWith(color: Colors.grey)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: Sizes.p12,
      runSpacing: Sizes.p8,
      children: [
        _buildItem(context, Icons.calendar_month, item.releaseDate.year.toString()),
        _buildItem(context, Icons.schedule, LocaleKeys.discover_runtime.tr(args: [runtime.toString()])),
        _buildItem(context, Icons.language, item.spokenLanguages.firstOrNull?.englishName ?? ""),
        _buildItem(context, Icons.videocam_outlined, item.status),
        if (episodeCount != null)
          _buildCountIcon(context, Icons.fiber_manual_record_rounded, LocaleKeys.discover_episodes.plural(episodeCount!)),
        if (seasonCount != null)
          _buildCountIcon(context, Icons.fiber_manual_record_rounded, LocaleKeys.discover_seasonCount.plural(seasonCount!)),
      ],
    );
  }
}
