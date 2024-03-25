import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';
import 'package:watchable/src/constants/app_sizes.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';

class NotYetAvailableBanner extends StatelessWidget {
  const NotYetAvailableBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.mediaQuery.size.width * .8,
      child: Card(
        child: Padding(
          padding: cardPadding,
          child: Column(
            children: [
              Text("Coming soon", style: context.textTheme.titleLarge),
              gapH16,
              StyledText(
                text: 'This content <bold>is not yet available</bold> in the current version of Watchable.',
                tags: {
                  'bold': StyledTextTag(style: context.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),
                },
                textAlign: TextAlign.center,
                style: context.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
