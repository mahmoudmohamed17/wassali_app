import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';
import 'typography.dart';

/// Application Theme Configuration
/// Light Theme only (App is not designed for Dark Mode)
class AppTheme {
  AppTheme._();

  /// Light Theme Configuration
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      // Core Colors
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,

      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.accent, // Accent is used as secondary
        error: AppColors.error,
        onSecondary: AppColors.textOnPrimary,
        onSurface: AppColors.textPrimary,
      ),

      // ==============================
      // AppBar Theme
      // ==============================
      appBarTheme: AppBarTheme(
        elevation: 5,
        centerTitle: true,
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.textPrimary,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleTextStyle: AppTypography.titleLarge.copyWith(
          overflow: TextOverflow.ellipsis,
        ),
      ),

      // ==============================
      // Text Theme
      // ==============================
      textTheme: AppTypography.buildTextTheme(),

      // ==============================
      // Card Theme
      // ==============================
      cardTheme: CardThemeData(
        elevation: 2,
        color: AppColors.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      // ==============================
      // Input Decoration Theme
      // ==============================
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surface,
        hintStyle: AppTypography.bodyMedium.copyWith(color: AppColors.grey400),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.error),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
      ),

      // ==============================
      // Elevated Button Theme
      // ==============================
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textOnPrimary,
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: AppTypography.bodyMedium,
          shadowColor: Colors.transparent,
        ),
      ),

      // ==============================
      // Outlined Button Theme
      // ==============================
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: const BorderSide(color: AppColors.primary),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: AppTypography.bodyMedium,
          shadowColor: Colors.transparent,
        ),
      ),

      // ==============================
      // Text Button Theme
      // ==============================
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.accent,
          textStyle: AppTypography.bodyMedium,
        ),
      ),

      // ==============================
      // Icon Theme
      // ==============================
      iconTheme: const IconThemeData(color: AppColors.textPrimary, size: 24),

      // ==============================
      // Divider Theme
      // ==============================
      dividerTheme: const DividerThemeData(
        color: AppColors.divider,
        thickness: 1,
        space: 1,
      ),

      // ==============================
      // Drawer Theme
      // ==============================
      drawerTheme: const DrawerThemeData(
        backgroundColor: AppColors.background,
        elevation: 5,
      ),

      // ==============================
      // List Tile Theme
      // ==============================
      listTileTheme: ListTileThemeData(
        titleTextStyle: AppTypography.labelLarge,
        subtitleTextStyle: AppTypography.bodySmall,
        leadingAndTrailingTextStyle: AppTypography.labelSmall,
      ),
    );
  }
}
