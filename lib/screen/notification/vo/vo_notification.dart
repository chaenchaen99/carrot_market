import 'package:fast_app_base/screen/notification/vo/notification_type.dart';

class DanggeunNotification {
  final NotificationType type;
  final String title;
  final String description;
  final DateTime time;
  bool isRead;

  DanggeunNotification(
    this.type,
    this.title,
    this.description,
    this.time, {
    this.isRead = false,
  });
}
