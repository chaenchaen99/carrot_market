import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/common/util/async/flutter_async.dart';
import 'package:fast_app_base/data/network/result/api_error.dart';
import 'package:fast_app_base/screen/notification/vo/notification_dummies.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

import '../simple_result.dart';

class DanggeunApi {
  static Future<SimpleResult<List<DanggeunNotification>, ApiError>>
      getNotification() async {
    await sleepAsync(300.ms);
    return SimpleResult.success(notificationList);
  }
}
