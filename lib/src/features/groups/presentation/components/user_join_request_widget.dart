import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/async_value_extensions.dart';
import 'package:watchable/src/features/common/presentation/spinner.dart';
import 'package:watchable/src/features/groups/domain/join_request.dart';
import 'package:watchable/src/features/profile/data/profile_repository.dart';

import '../../../profile/presentation/components/profile_avatar.dart';
import '../../application/join_request_controller.dart';

class UserJoinRequestWidget extends ConsumerWidget {
  final JoinRequest item;

  const UserJoinRequestWidget(this.item, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(getProfileByIdProvider(item.userId));
    final state = ref.watch(joinRequestControllerProvider(item));

    bool isActionLoading = state.maybeWhen(data: (_) => false, orElse: () => true);
    ref.listen(joinRequestControllerProvider(item), (_, next) => next.showToastOnError(context));

    return ListTile(
      leading: ProfileAvatar(profile),
      title: Text(profile.maybeWhen(data: (data) => data.username, orElse: () => '')),
      subtitle: Text(item.createdAt.toString()),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isActionLoading) const Spinner(size: 20),
          if (!isActionLoading)
            IconButton(icon: const Icon(Icons.check), onPressed: () => ref.read(joinRequestControllerProvider(item).notifier).approve()),
          if (!isActionLoading)
            IconButton(icon: const Icon(Icons.close), onPressed: () => ref.read(joinRequestControllerProvider(item).notifier).reject()),
        ],
      ),
    );
  }
}
