import 'package:design_system_mobile/desigSystem/tokens/colors.dart';
import 'package:design_system_mobile/desigSystem/tokens/typography.dart';
import 'package:flutter/material.dart';

class CpText extends StatelessWidget {
  final String texto;
  // Parametros opcionales
  final Color color;
  final TextStyle style;
  final FontWeight fontWeightBold;
  final FontStyle fontStyleItalic;
  final TextDecoration textDecoration;
  final Color decorationColor;
  final double decorationThickness;
  final EdgeInsetsGeometry padding;

  const CpText(
    this.texto, { // Parametros opcionales
    this.color = ColorsDS.dark,
    this.style = TypographyDS.body,
    this.padding = const EdgeInsetsGeometry.all(0),
    this.textDecoration = TextDecoration.none,
    this.decorationColor = ColorsDS.dark,
    this.decorationThickness = 1,
    this.fontWeightBold = FontWeight.normal,
    this.fontStyleItalic = FontStyle.normal,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color colorLocal = color;
    if (colorLocal == ColorsDS.dark) {
      colorLocal = style.color!;
    }
    return Padding(
      padding: padding,
      child: Text(
        texto,
        style: style.copyWith(
          color: colorLocal,
          fontWeight: fontWeightBold,
          fontStyle: fontStyleItalic,
          decoration: textDecoration,
          decorationColor: decorationColor,
          decorationThickness: decorationThickness,
        ),
      ),
    );
  }
}
