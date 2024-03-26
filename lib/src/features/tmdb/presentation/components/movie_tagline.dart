import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:watchable/src/constants/app_sizes.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/tmdb/domain/movie_details.dart';

class MovieTagline extends StatelessWidget {
  final MovieDetails movie;

  const MovieTagline(this.movie, {super.key});

  Widget _buildItem(BuildContext context, IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: Sizes.p16, color: Colors.grey),
        gapW4,
        Text(text, style: context.textTheme.bodySmall!.copyWith(color: Colors.grey)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildItem(context, Icons.calendar_month, movie.releaseDate.year.toString()),
        gapW8,
        _buildItem(context, Icons.schedule, LocaleKeys.discover_runtime.tr(args: [movie.runtime.toString()])),
        gapW8,
        _buildItem(context, Icons.language, movie.spokenLanguages.firstOrNull?.name ?? ''),
        gapW8,
        _buildItem(context, Icons.videocam_outlined, movie.status),
      ],
    );
  }
}
