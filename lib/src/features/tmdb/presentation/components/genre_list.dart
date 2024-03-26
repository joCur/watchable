import 'package:flutter/material.dart';

import '../../../../constants/app_sizes.dart';
import '../../domain/genre.dart';

class GenreList extends StatelessWidget {
  final List<Genre> genres;

  const GenreList(this.genres, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16, vertical: Sizes.p8),
      sliver: SliverToBoxAdapter(
        child: Wrap(
          spacing: Sizes.p8,
          runSpacing: Sizes.p8,
          children: genres.map((genre) => Chip(label: Text(genre.name))).toList(),
        ),
      ),
    );
  }
}
