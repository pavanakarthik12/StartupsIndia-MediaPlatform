import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'style_guide.dart';

class AppTheme {
  static ThemeData _buildDarkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      fontFamily: GoogleFonts.poppins().fontFamily,
      scaffoldBackgroundColor: AppColors.pageBackground,
      canvasColor: AppColors.pageBackground,
      primaryColor: AppColors.primaryDefault,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryDefault,
        brightness: Brightness.dark,
        surface: AppColors.surfaceBackground,
        primary: AppColors.primaryDefault,
        secondary: AppColors.primaryStrong,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: AppColors.textPrimary,
        error: AppColors.errorDefault,
        outline: AppColors.borderSoft,
      ),
      textTheme: TextTheme(
        displayLarge: AppTypography.displayLargeBold.copyWith(color: AppColors.textPrimary),
        displayMedium: AppTypography.displayMediumBold.copyWith(color: AppColors.textPrimary),
        displaySmall: AppTypography.displaySmallBold.copyWith(color: AppColors.textPrimary),
        headlineMedium: AppTypography.displaySmallBold.copyWith(color: AppColors.textPrimary),
        bodyLarge: AppTypography.textMedium.copyWith(color: AppColors.textMuted),
        bodyMedium: AppTypography.textSmall.copyWith(color: AppColors.textMuted),
        bodySmall: AppTypography.textSmall.copyWith(fontSize: 13, color: AppColors.textMuted),
        labelLarge: AppTypography.labelLarge.copyWith(color: Colors.white),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        foregroundColor: AppColors.textPrimary,
        titleTextStyle: AppTypography.textMedium.copyWith(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      cardTheme: CardThemeData(
        color: AppColors.elevatedSurface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: AppColors.borderSoft),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.borderSoft,
        thickness: 1,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.grayscaleInputBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.borderSoft),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.borderSoft),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primaryDefault, width: 1.2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.errorDark),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.errorDark, width: 1.2),
        ),
        hintStyle: AppTypography.textSmall.copyWith(color: AppColors.textMuted),
        labelStyle: AppTypography.textSmall.copyWith(color: AppColors.textMuted),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryDefault,
          foregroundColor: Colors.white,
          disabledBackgroundColor: AppColors.primaryStrong.withOpacity(0.45),
          disabledForegroundColor: Colors.white70,
          elevation: 0,
          shadowColor: AppColors.primaryGlow,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.primaryDefault,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          side: const BorderSide(color: AppColors.borderSoft),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primaryDefault,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        selectedItemColor: AppColors.primaryDefault,
        unselectedItemColor: AppColors.textMuted,
        selectedIconTheme: IconThemeData(color: AppColors.primaryDefault),
        unselectedIconTheme: IconThemeData(color: AppColors.textMuted),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.elevatedSurface,
        contentTextStyle: AppTypography.textSmall.copyWith(color: Colors.white),
        actionTextColor: AppColors.primaryDefault,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.elevatedSurface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: AppColors.borderSoft),
        ),
        titleTextStyle: AppTypography.displaySmallBold.copyWith(color: Colors.white),
        contentTextStyle: AppTypography.textSmall.copyWith(color: AppColors.textMuted),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return Colors.white;
          return AppColors.textMuted;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return AppColors.primaryDefault;
          return AppColors.borderSoft;
        }),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    );
  }

  static ThemeData _buildLightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      fontFamily: GoogleFonts.poppins().fontFamily,
      scaffoldBackgroundColor: AppColors.grayscaleWhite,
      canvasColor: AppColors.grayscaleWhite,
      primaryColor: AppColors.primaryDefault,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryDefault,
        brightness: Brightness.light,
        surface: AppColors.grayscaleWhite,
        primary: AppColors.primaryDefault,
        secondary: AppColors.primaryStrong,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: AppColors.grayscaleTitleActive,
        error: AppColors.errorDefault,
        outline: AppColors.grayscaleLine,
      ),
      textTheme: TextTheme(
        displayLarge: AppTypography.displayLargeBold.copyWith(color: AppColors.grayscaleTitleActive),
        displayMedium: AppTypography.displayMediumBold.copyWith(color: AppColors.grayscaleTitleActive),
        displaySmall: AppTypography.displaySmallBold.copyWith(color: AppColors.grayscaleTitleActive),
        headlineMedium: AppTypography.displaySmallBold.copyWith(color: AppColors.grayscaleTitleActive),
        bodyLarge: AppTypography.textMedium.copyWith(color: AppColors.grayscaleBodyText),
        bodyMedium: AppTypography.textSmall.copyWith(color: AppColors.grayscaleBodyText),
        bodySmall: AppTypography.textSmall.copyWith(fontSize: 13, color: AppColors.grayscaleBodyText),
        labelLarge: AppTypography.labelLarge.copyWith(color: AppColors.grayscaleWhite),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        foregroundColor: AppColors.grayscaleTitleActive,
        titleTextStyle: AppTypography.textMedium.copyWith(
          color: AppColors.grayscaleTitleActive,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: const IconThemeData(color: AppColors.grayscaleTitleActive),
      ),
      cardTheme: CardThemeData(
        color: AppColors.grayscaleWhite,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: AppColors.grayscaleLine),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.grayscaleLine,
        thickness: 1,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.grayscaleInputBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.grayscaleLine),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.grayscaleLine),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primaryDefault, width: 1.2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.errorDark),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.errorDark, width: 1.2),
        ),
        hintStyle: AppTypography.textSmall.copyWith(color: AppColors.grayscaleButtonText),
        labelStyle: AppTypography.textSmall.copyWith(color: AppColors.grayscaleButtonText),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryDefault,
          foregroundColor: Colors.white,
          disabledBackgroundColor: AppColors.primaryStrong.withOpacity(0.45),
          disabledForegroundColor: Colors.white70,
          elevation: 0,
          shadowColor: AppColors.primaryGlow,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.primaryDefault,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.grayscaleTitleActive,
          side: const BorderSide(color: AppColors.grayscaleLine),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primaryDefault,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.primaryDefault,
        unselectedItemColor: AppColors.grayscaleButtonText,
        selectedIconTheme: IconThemeData(color: AppColors.primaryDefault),
        unselectedIconTheme: IconThemeData(color: AppColors.grayscaleButtonText),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.grayscaleTitleActive,
        contentTextStyle: AppTypography.textSmall.copyWith(color: Colors.white),
        actionTextColor: AppColors.primaryDefault,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.grayscaleWhite,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: AppColors.grayscaleLine),
        ),
        titleTextStyle: AppTypography.displaySmallBold.copyWith(color: AppColors.grayscaleTitleActive),
        contentTextStyle: AppTypography.textSmall.copyWith(color: AppColors.grayscaleBodyText),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return Colors.white;
          return AppColors.grayscaleButtonText;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return AppColors.primaryDefault;
          return AppColors.grayscaleLine;
        }),
      ),
      iconTheme: const IconThemeData(color: AppColors.grayscaleTitleActive),
    );
  }

  static ThemeData get lightTheme => _buildLightTheme();
  static ThemeData get darkTheme => _buildDarkTheme();
}
