import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/features/groups/domain/join_request.dart';
import 'package:watchable/src/features/profile/data/profile_repository.dart';

class UserJoinRequestWidget extends ConsumerWidget {
  final JoinRequest item;

  const UserJoinRequestWidget(this.item, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(getProfileByIdProvider(item.userId));
    bool isLoading = profile.maybeWhen(data: (_) => false, orElse: () => true);

    return ListTile(
      leading: isLoading || profile.value!.avatarUrl == null
          ? const CircleAvatar(child: Icon(Icons.person))
          : CircleAvatar(backgroundImage: NetworkImage(profile.value!.avatarUrl!)),
      title: Text(profile.maybeWhen(data: (data) => data.username, orElse: () => '')),
      subtitle: Text(item.createdAt.toString()),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(icon: const Icon(Icons.check), onPressed: () {}),
          IconButton(icon: const Icon(Icons.close), onPressed: () {}),
        ],
      ),
    );
  }
}
