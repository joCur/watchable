import 'package:flutter/material.dart';
import 'package:watchable/src/constants/app_sizes.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';

class TabChip extends StatelessWidget {
  final int index;
  final int value;
  final String content;
  final Function() action;

  const TabChip({required this.index, required this.value, required this.action, required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    final background = context.colorScheme.surfaceVariant;
    final onBackground = context.colorScheme.onSurfaceVariant;
    final selectedBackground = context.colorScheme.primary;
    final onSelectedBackground = context.colorScheme.onPrimary;

    return Container(
      decoration: BoxDecoration(
        color: index == value ? selectedBackground : background,
        borderRadius: BorderRadius.circular(Sizes.p32),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.p32)),
          onTap: index == value ? null : action,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p12, vertical: Sizes.p4),
            child: Text(content, style: TextStyle(color: index == value ? onSelectedBackground : onBackground)),
          ),
        ),
      ),
    );
  }
}
