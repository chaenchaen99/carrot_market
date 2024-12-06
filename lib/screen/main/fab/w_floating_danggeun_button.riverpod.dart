import 'package:fast_app_base/screen/main/fab/w_floating_danggeun_button.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'w_floating_danggeun_button.riverpod.g.dart';

@riverpod
class FloatingButton extends _$FloatingButton {
  @override
  FloatingButtonState build() {
    return const FloatingButtonState(false, true);
  }

  bool needToMakeButtonBigger = false;

  void toggleMenu() {
    //초기상태 저장
    final isExpanded = state.isExpanded;
    final isBig = state.isBig;

    state = state.copyWith(
        isExpanded: !state.isExpanded, isBig: needToMakeButtonBigger);

    if (needToMakeButtonBigger) {
      needToMakeButtonBigger = false;
    }

    if (isBig && !isExpanded) {
      needToMakeButtonBigger = true;
    }
  }

  void changeButtonSize(bool isBig) {
    state = state.copyWith(isBig: isBig);
  }
}
