import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/features/common/presentation/not_yet_available_banner.dart';

class DiscoverTvTab extends ConsumerStatefulWidget {
  const DiscoverTvTab({super.key});

  @override
  ConsumerState createState() => _DiscoverTvTabState();
}

class _DiscoverTvTabState extends ConsumerState<DiscoverTvTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NotYetAvailableBanner(),
        ],
      ),
    );
  }
}
