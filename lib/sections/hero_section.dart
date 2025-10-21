import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../core/app_colors.dart';
import '../core/app_text_styles.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/banner.png',
          width: double.infinity,
          fit: BoxFit.cover,
          height: 600,
        ),
        Container(
          width: double.infinity,
          height: 600,
          color: Colors.black.withOpacity(0.5),
        ),
        const Positioned.fill(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'VEGA FACILITIES',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Excelência em Engenharia e Serviços Integrados',
                  style: AppTextStyles.subtitle,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
