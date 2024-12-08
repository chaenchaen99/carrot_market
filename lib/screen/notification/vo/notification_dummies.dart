import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final DanggeunNotification noti_dummy_01 = DanggeunNotification(
  NotificationType.official,
  '8월 가계부가 도착했어요!',
  '#당근 #당근가계부 #따듯한 거래',
  DateTime.now().subtract(3.hours),
);

final DanggeunNotification noti_dummy_02 = DanggeunNotification(
  NotificationType.legal,
  '당근 페이 전자금융거래 이용약관 개정 안내',
  '개정사항 확인해주세요 2024년 12월 8일 적용',
  DateTime.now().subtract(3.days),
);

final DanggeunNotification noti_dummy_03 = DanggeunNotification(
  NotificationType.local,
  '지금 새로워진 \'당근\'을 만나보세요.🥕',
  '새 이름 ',
  DateTime.now().subtract(4.days),
  isRead: true,
);

final DanggeunNotification noti_dummy_04 = DanggeunNotification(
  NotificationType.official,
  '가족 집 수리',
  '마음에 드셨다면 다른 이웃들을 위해 따듯한 후기를 남겨주세요 ',
  DateTime.now().subtract(7.days),
);

final notificationList = [
  noti_dummy_01,
  noti_dummy_02,
  noti_dummy_03,
  noti_dummy_04
];
