import 'package:flutter/widgets.dart';
import '../core/app_colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final Color background;
  const SectionTitle({
    super.key,
    required this.title,
    this.background = AppColors.lightBackground,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.primary,
          letterSpacing: 0.6,
        ),
      ),
    );
  }
}
