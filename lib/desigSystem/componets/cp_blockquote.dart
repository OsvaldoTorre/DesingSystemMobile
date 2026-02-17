import 'package:design_system_mobile/desigSystem/componets/cp_text.dart';
import 'package:design_system_mobile/desigSystem/tokens/colors.dart';
import 'package:design_system_mobile/desigSystem/tokens/typography.dart';
import 'package:flutter/material.dart';

class CpBlockquote extends StatelessWidget {
  final String texto;
  final String author;
  final String source;

  const CpBlockquote(
    this.texto, {
    this.author = "Default Author",
    this.source = "Default Source",
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(children: [CpText(texto, style: TypographyDS.lead)]),
          Row(children: [CpText(texto, style: TypographyDS.small)]),
        ],
      ),
    );
  }
}
