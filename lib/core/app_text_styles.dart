import 'package:flutter/widgets.dart';
import 'app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle title = TextStyle(
    fontFamily: GoogleFonts.metrophobic().fontFamily,
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle subtitle = TextStyle(
    fontFamily: GoogleFonts.metrophobic().fontFamily,
    fontSize: 18,
    color: AppColors.textSecondary,
  );

  static TextStyle sectionTitle = TextStyle(
    fontFamily: GoogleFonts.metrophobic().fontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  static TextStyle body = TextStyle(
    fontFamily: GoogleFonts.metrophobic().fontFamily,
    fontSize: 16,
    color: AppColors.textSecondary,
  );
}
