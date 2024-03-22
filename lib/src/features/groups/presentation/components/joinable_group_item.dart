import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/groups/application/join_group_controller.dart';
import 'package:watchable/src/features/groups/domain/group.dart';

import '../../../common/presentation/spinner.dart';

class JoinableGroupItem extends ConsumerWidget {
  final Group item;

  const JoinableGroupItem(this.item, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final joinState = ref.watch(joinGroupControllerProvider(item.id));

    final canSend = joinState.valueOrNull == null && !joinState.hasError && !joinState.isLoading;

    return ListTile(
      title: Text(item.name),
      onTap: canSend ? () => ref.read(joinGroupControllerProvider(item.id).notifier).join() : null,
      subtitle: item.description != null ? Text(item.description!) : null,
      trailing: joinState.when(
        data: (data) => data == null ? const Icon(Icons.arrow_forward_ios) : Icon(Icons.check, color: context.colorScheme.primary),
        error: (error, stackTrace) => const Icon(Icons.error),
        loading: () => const SizedBox(width: 20, height: 20, child: Spinner()),
      ),
    );
  }
}
