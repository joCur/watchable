import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:watchable/src/constants/app_sizes.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';

import '../../application/search_controller.dart';

class MediaTabChip extends ConsumerWidget {
  final MediaType value;
  final bool isSelected;

  const MediaTabChip({required this.value, this.isSelected = false, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(searchControllerProvider) == value;
    final background = context.colorScheme.surfaceVariant;
    final onBackground = context.colorScheme.onSurfaceVariant;
    final selectedBackground = context.colorScheme.primary;
    final onSelectedBackground = context.colorScheme.onPrimary;

    return Container(
      decoration: BoxDecoration(
        color: isSelected ? selectedBackground : background,
        borderRadius: BorderRadius.circular(Sizes.p32),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.p32)),
          onTap: isSelected ? null : () => ref.read(searchControllerProvider.notifier).setValue(value),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p12, vertical: Sizes.p4),
            child: Text(value.name, style: TextStyle(color: isSelected ? onSelectedBackground : onBackground)),
          ),
        ),
      ),
    );
  }
}
