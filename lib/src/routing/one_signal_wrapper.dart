import 'package:go_router/go_router.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../features/groups/presentation/group_detail_screen.dart';

class OneSignalWrapper {
  static void handleClickNotification(GoRouter router) {
    OneSignal.Notifications.addClickListener((event) {
      final type = event.notification.additionalData?["type"];
      if (type == null) return;
      if (type == "NEW_GROUP_MEDIA") {
        router.goNamed(GroupDetailScreen.name, pathParameters: {"id": event.notification.additionalData!["group_id"]});
      }
    });
  }
}
