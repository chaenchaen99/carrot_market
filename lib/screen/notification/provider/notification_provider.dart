import 'package:fast_app_base/data/network/danggeun_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../vo/vo_notification.dart';

final remoteNotificationProvider = FutureProvider((ref) async {
  final result = await DanggeunApi.getNotification();
  return result.successData;
});

final notificationProvider = StateProvider<List<DanggeunNotification>?>((ref) {
  final list = ref.watch(remoteNotificationProvider);
  if (list.hasValue) {
    return list.requireValue;
  }
  return null;
});
