import 'package:flutter/material.dart';
import '../../desigSystem/tokens/colors.dart';

@immutable
class BootstrapColors extends ThemeExtension<BootstrapColors> {
  const BootstrapColors({
    required this.success,
    required this.warning,
    required this.info,
  });

  final Color? success;
  final Color? warning;
  final Color? info;

  @override
  BootstrapColors copyWith({Color? success, Color? warning, Color? info}) {
    return BootstrapColors(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
    );
  }

  @override
  BootstrapColors lerp(ThemeExtension<BootstrapColors>? other, double t) {
    if (other is! BootstrapColors) {
      return this;
    }
    return BootstrapColors(
      success: Color.lerp(success, other.success, t),
      warning: Color.lerp(warning, other.warning, t),
      info: Color.lerp(info, other.info, t),
    );
  }

  // Instancia estática con tus tokens definidos
  static const light = BootstrapColors(
    success: ColorsDS.success,
    warning: ColorsDS.warning,
    info: ColorsDS.info,
  );

  static const dark = BootstrapColors(
    success: ColorsDS.success,
    warning: ColorsDS.warning,
    info: ColorsDS.info,
  );
}
