import 'package:design_system_mobile/desigSystem/tokens/colors.dart';
import 'package:design_system_mobile/desigSystem/tokens/spacings.dart';
import 'package:design_system_mobile/desigSystem/tokens/typography.dart';
import 'package:flutter/material.dart';
import 'config/theme/theme_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark, // Cambia automáticamente según el sistema
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(SpacingsDS.s3),
              child: ListView(
                children: [
                  Text(
                    'H1',
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'H2',
                    style: Theme.of(context).textTheme.displayMedium,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'H3',
                    style: Theme.of(context).textTheme.displaySmall,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'H4',
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'H5',
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'H6',
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Body Lead',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Body',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Body Small',
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.start,
                  ),

                  Center(child: Text("Colors", style: TypographyDS.h2)),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: Container(color: ColorsDS.primary),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: Container(color: ColorsDS.secondary),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: Container(color: ColorsDS.success),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: Container(color: ColorsDS.info),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: Container(color: ColorsDS.warning),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: Container(color: ColorsDS.danger),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: Container(color: ColorsDS.light),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: Container(color: ColorsDS.dark),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: Container(color: ColorsDS.white),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: Container(color: ColorsDS.black),
                  ),
                  Center(
                    child: Text(
                      "Spacings",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                  Text("Spacings s0"),
                  SizedBox(
                    height: SpacingsDS.s0,
                    child: Container(color: ColorsDS.danger),
                  ),
                  Text("Spacings s1"),
                  SizedBox(
                    height: SpacingsDS.s1,
                    child: Container(color: ColorsDS.danger),
                  ),
                  Text("Spacings s2"),
                  SizedBox(
                    height: SpacingsDS.s2,
                    child: Container(color: ColorsDS.danger),
                  ),
                  Text("Spacings s3"),
                  SizedBox(
                    height: SpacingsDS.s3,
                    child: Container(color: ColorsDS.danger),
                  ),
                  Text("Spacings s4"),
                  SizedBox(
                    height: SpacingsDS.s4,
                    child: Container(color: ColorsDS.danger),
                  ),
                  Text("Spacings s5"),
                  SizedBox(
                    height: SpacingsDS.s5,
                    child: Container(color: ColorsDS.danger),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
