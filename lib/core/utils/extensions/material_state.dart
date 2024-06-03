import 'package:flutter/material.dart';

/// WidgetStateExtension on WidgetState.
extension WidgetStateExtension on Iterable<WidgetState> {
  /// Get if the state is hovered.
  bool get isHovered => contains(WidgetState.hovered);

  /// Get if the state is focused.
  bool get isFocused => contains(WidgetState.focused);

  /// Get if the state is pressed.
  bool get isPressed => contains(WidgetState.pressed);

  /// Get if the state is dragged.
  bool get isDragged => contains(WidgetState.dragged);

  /// Get if the state is selected.
  bool get isSelected => contains(WidgetState.selected);

  /// Get if the state is scrolledUnder.
  bool get isScrolledUnder => contains(WidgetState.scrolledUnder);

  /// Get if the state is disabled.
  bool get isDisabled => contains(WidgetState.disabled);

  /// Get if the state is error.
  bool get isError => contains(WidgetState.error);
}
