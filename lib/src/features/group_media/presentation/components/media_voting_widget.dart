import 'package:flutter/material.dart';
import 'package:watchable/src/features/group_media/domain/media_reaction.dart';

class MediaVotingWidget extends StatelessWidget {
  final Function(MediaReaction type) onVote;

  const MediaVotingWidget({required this.onVote, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () => onVote(MediaReaction.watch),
          iconSize: 18,
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.thumb_up_sharp),
        ),
        IconButton(
          onPressed: () => onVote(MediaReaction.maybe),
          iconSize: 18,
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.remove_circle_outline),
        ),
        IconButton(
          onPressed: () => onVote(MediaReaction.pass),
          iconSize: 18,
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.thumb_down_sharp),
        ),
      ],
    );
  }
}
