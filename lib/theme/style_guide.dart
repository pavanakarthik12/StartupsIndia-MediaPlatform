import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// The central source of truth for all foundational design tokens
/// extracted from Figma. If the client wants to change "Brand Blue" later,
/// simply change it here and the entire app will update.
class AppColors {
  // Brand & Primary
  static const Color primaryDefault = Color(0xFFFF4D57);
  static const Color primaryStrong = Color(0xFFE53945);
  static const Color primaryGlow = Color(0x59FF4D57);

  // Grayscale Palette (Used primarily for Light Theme)
  static const Color grayscaleWhite = Color(0xFFFFFFFF);
  static const Color grayscaleTitleActive = Color(0xFF141414); // Dark black for titles
  static const Color grayscaleBodyText = Color(0xFF4A4A4A); // Dark gray for body
  static const Color grayscaleButtonText = Color(0xFF7A7A7A); // Medium gray for inactive/button text
  static const Color grayscaleSecondaryButton = Color(0xFFEBEBEB); // Light gray for secondary buttons
  static const Color grayscaleLine = Color(0xFFE0E0E0); // Light gray for dividers/borders
  static const Color grayscaleInputBackground = Color(0xFFF5F5F5); // Very light gray for inputs
  static const Color pageBackground = Color(0xFF050505);
  static const Color surfaceBackground = Color(0xFF0A0A0A);
  static const Color elevatedSurface = Color(0xFF151515);
  static const Color glassSurface = Color(0x99111111);
  static const Color borderSoft = Color(0x14FFFFFF);
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textMuted = Color(0xFFA0A0A0);
  static const Color textInverse = Color(0xFF050505);

  // Status & Feedback
  static const Color errorDefault = Color(0xFFFF4D57);
  static const Color successDefault = Color(0xFF3DDC97);
  static const Color warningDefault = Color(0xFFF4B740);
  static const Color errorLight = Color(0x26FF4D57);
  static const Color errorDark = Color(0xFFE53945);
  static const Color linkBlue = Color(0xFFFF4D57);
}

class AppTypography {
  static TextStyle displayLargeBold = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 48,
    height: 1.5,
    letterSpacing: 0.25 * 48 / 100, // 0.25%
  );

  static TextStyle textLarge = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    height: 1.5,
    letterSpacing: 0.60 * 20 / 100, // 0.6%
  );

  static TextStyle displayMediumBold = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 32,
    height: 1.5,
    letterSpacing: 0.12,
  );

  static TextStyle displaySmallBold = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 24,
    height: 1.5,
    letterSpacing: 0.50 * 24 / 100, // 0.5%
  );

  static TextStyle linkMedium = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 1.5,
    letterSpacing: 0.75 * 16 / 100, // 0.75%
  );

  static TextStyle textMedium = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.5,
    letterSpacing: 0.75 * 16 / 100, // 0.75%
  );

  static TextStyle textSmall = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.5,
    letterSpacing: 0.85 * 14 / 100, // 0.85%
  );
  
  static TextStyle labelLarge = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 1.5,
    letterSpacing: 0.12,
  );
}
