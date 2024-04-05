import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/role.dart';

extension RoleExtensions on AsyncValue<Role> {
  bool hasAnyRole(List<Role> roles) => maybeWhen(data: (data) => roles.contains(data), orElse: () => false);
}
