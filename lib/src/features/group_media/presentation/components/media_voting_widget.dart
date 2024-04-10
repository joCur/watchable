import 'package:flutter/material.dart';
import 'package:watchable/src/features/group_media/domain/vote_type.dart';

class MediaVotingWidget extends StatelessWidget {
  final Function(VoteType type) onVote;

  const MediaVotingWidget({required this.onVote, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () => onVote(VoteType.up),
          iconSize: 18,
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.thumb_up_sharp),
        ),
        IconButton(
          onPressed: () => onVote(VoteType.neutral),
          iconSize: 18,
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.remove_circle_outline),
        ),
        IconButton(
          onPressed: () => onVote(VoteType.down),
          iconSize: 18,
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.thumb_down_sharp),
        ),
      ],
    );
  }
}
