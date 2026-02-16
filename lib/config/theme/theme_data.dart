import 'package:design_system_mobile/desigSystem/tokens/spacings.dart';
import 'package:flutter/material.dart';
import '../../desigSystem/tokens/colors.dart';
import '../../desigSystem/tokens/typography.dart';
import 'custom_theme_extension.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      extensions: const [BootstrapColors.light],

      // 1. Configuración de Colores (ColorScheme)
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: ColorsDS.primary,
        onPrimary: ColorsDS.white,
        secondary: ColorsDS.secondary,
        onSecondary: ColorsDS.white,
        error: ColorsDS.danger,
        onError: ColorsDS.white,
        surface: ColorsDS.white,
        onSurface: ColorsDS.dark,

        // Mapeamos 'info' a tertiary para tenerlo disponible en el esquema
        tertiary: ColorsDS.info,
        onTertiary: ColorsDS.black,
      ),

      // Fondo por defecto de las pantallas (blanco como en la web)
      scaffoldBackgroundColor: ColorsDS.white,

      // 2. Configuración de Tipografía
      // Mapeamos tus tokens 'h' y 'body' a los slots semánticos de Material
      textTheme: const TextTheme(
        displayLarge: TypographyDS.h1,
        displayMedium: TypographyDS.h2,
        displaySmall: TypographyDS.h3,
        headlineLarge: TypographyDS.h4,
        headlineMedium: TypographyDS.h5,
        headlineSmall: TypographyDS.h6,

        bodyLarge: TypographyDS.bodyLead,
        bodyMedium: TypographyDS.body,
        bodySmall: TypographyDS.small,
      ),

      // 3. Estilos globales de componentes (Ejemplo: Botones estilo Bootstrap)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsDS.primary,
          foregroundColor: ColorsDS.white,
          textStyle: TypographyDS.body.copyWith(fontWeight: FontWeight.w500),
          padding: const EdgeInsets.symmetric(
            horizontal: SpacingsDS.s3, // 16px
            vertical: 12.0, // 12px
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              4,
            ), // Bordes ligeramente redondeados estilo Bootstrap
          ),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      extensions: const [BootstrapColors.dark],

      // 1. Configuración de Colores (ColorScheme) para Modo Oscuro
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: ColorsDS.primary,
        onPrimary: ColorsDS.white,
        secondary: ColorsDS.secondary,
        onSecondary: ColorsDS.white,
        error: ColorsDS.danger,
        onError: ColorsDS.white,
        surface: ColorsDS.dark, // Fondo oscuro (Bootstrap dark grey)
        onSurface: ColorsDS.white, // Texto blanco

        tertiary: ColorsDS.info,
        onTertiary: ColorsDS.black,
      ),

      scaffoldBackgroundColor: ColorsDS.dark,

      // 2. Configuración de Tipografía
      // Usamos .apply() para forzar el color blanco en todos los estilos de texto
      textTheme: const TextTheme(
        displayLarge: TypographyDS.h1,
        displayMedium: TypographyDS.h2,
        displaySmall: TypographyDS.h3,
        headlineLarge: TypographyDS.h4,
        headlineMedium: TypographyDS.h5,
        headlineSmall: TypographyDS.h6,
        bodyLarge: TypographyDS.bodyLead,
        bodyMedium: TypographyDS.body,
        bodySmall: TypographyDS.small,
      ).apply(bodyColor: ColorsDS.white, displayColor: ColorsDS.white),

      // 3. Estilos globales de componentes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsDS.primary,
          foregroundColor: ColorsDS.white,
          textStyle: TypographyDS.body.copyWith(fontWeight: FontWeight.w500),
          padding: const EdgeInsets.symmetric(
            horizontal: SpacingsDS.s3,
            vertical: 12.0,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
    );
  }
}
