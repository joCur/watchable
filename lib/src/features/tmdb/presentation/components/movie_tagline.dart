import 'package:flutter/material.dart';
import 'package:watchable/src/constants/app_sizes.dart';
import 'package:watchable/src/features/tmdb/domain/movie_details.dart';

class MovieTagline extends StatelessWidget {
  final MovieDetails movie;

  const MovieTagline(this.movie, {super.key});

  Widget _buildItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 4),
        Text(text),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildItem(Icons.calendar_month, movie.releaseDate.year.toString()),
        gapW8,
        _buildItem(Icons.schedule, movie.runtime.toString()),
        gapW8,
        _buildItem(Icons.language, movie.originalLanguage),
        gapW8,
        _buildItem(Icons.videocam_outlined, movie.status),
      ],
    );
  }
}
