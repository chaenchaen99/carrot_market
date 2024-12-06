import 'package:freezed_annotation/freezed_annotation.dart';

part 'w_floating_danggeun_button.state.freezed.dart';

@freezed
class FloatingButtonState with _$FloatingButtonState {
  const factory FloatingButtonState(
    final bool isExpanded,
    final bool isBig,
  ) = _FloatingButtonState;
}
