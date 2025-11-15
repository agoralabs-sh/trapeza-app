import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Creates a theme from a [colorScheme].
ThemeData createTheme(BuildContext context, ColorScheme colorScheme) {
  TextTheme bodyTextTheme = GoogleFonts.getTextTheme('Nunito', Theme.of(context).textTheme);
  TextTheme textTheme = bodyTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );

  return ThemeData(
    brightness: colorScheme.brightness,
    canvasColor: colorScheme.surface,
    colorScheme: colorScheme,
    scaffoldBackgroundColor: colorScheme.surface,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    useMaterial3: true,
  );
}
