import 'package:flutter/material.dart';

/// Application Color Constants
class AppColors {
  AppColors._();

  // ==============================
  // Primary Colors
  // ==============================
  static const Color primary = Color(0xFF4F39F6);
  static const Color primaryDark = Color(0xFF3B28C9);
  static const Color primaryLight = Color(0xFF6C5CFF);
  static const Color primaryExtraLight = Color(0xFF887BFF);

  // ==============================
  // Secondary Colors
  // ==============================
  static const Color secondary = Color(0xFF00A63E); // 00A63E
  static const Color secondaryDark = Color(0xFF009888);
  static const Color secondaryLight = Color(0xFF33D07A);
  static const Color secondaryExtraLight = Color(0xFF00C753);

  // ==============================
  // Accent Colors
  // ==============================
  static const Color accent = Color(0xFFEC4899); // Pink / Magenta
  static const Color accentRed = Color(0xFFEF4444);
  static const Color accentYellow = Color(0xFFFDC700);
  static const Color accentOrange = Color(0xFFF97316);

  // ==============================
  // Background & Surface
  // ==============================
  static const Color background = Color(0xFFFFFFFF);
  static const Color backgroundDark = Color(0xFF0F172A);

  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceDark = Color(0xFF1E293B);

  // ==============================
  // Text Colors
  // ==============================
  static const Color textPrimary = Color(0xFF0F172A);
  static const Color textSecondary = Color(0xFF475569);
  static const Color textLight = Color(0xFF94A3B8); // <-- FIXED
  static const Color textHint = Color(0xFF94A3B8);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // ==============================
  // Status Colors
  // ==============================
  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFFACC15);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF38BDF8);

  // ==============================
  // Grey Scale
  // ==============================
  static const Color grey50 = Color(0xFFF8FAFC);
  static const Color grey100 = Color(0xFFF1F5F9);
  static const Color grey200 = Color(0xFFE2E8F0);
  static const Color grey300 = Color(0xFFCBD5E1);
  static const Color grey400 = Color(0xFF94A3B8);
  static const Color grey500 = Color(0xFF64748B);
  static const Color grey600 = Color(0xFF475569);
  static const Color grey700 = Color(0xFF334155);
  static const Color grey800 = Color(0xFF1E293B);
  static const Color grey900 = Color(0xFF0F172A);

  // ==============================
  // Border & Divider
  // ==============================
  static const Color border = Color(0xFFE2E8F0);
  static const Color divider = Color(0xFFCBD5E1);

  // ==============================
  // Gradients
  // ==============================
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, primaryLight],
  );

  static const LinearGradient accentGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accent, primary],
  );

  static const LinearGradient successGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [secondary, secondaryLight],
  );

  static const LinearGradient warningGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accentYellow, accentOrange],
  );

  static const LinearGradient errorGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accentRed, Color(0xFFDC2626)],
  );

  static const LinearGradient darkGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [backgroundDark, surfaceDark],
  );
}
