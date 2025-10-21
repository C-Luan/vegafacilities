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
      // decoration: BoxDecoration(
      //   color: background,
      //   borderRadius: BorderRadius.circular(30),
      // ),
      child: Image.asset(
        'assets/images/nossos_servicos.png',
        // width: double.infinity,
        fit: BoxFit.cover,
        height: 40,
      ),
    );
  }
}
