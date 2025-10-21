import 'package:flutter/widgets.dart';
import '../core/app_colors.dart';
import '../core/app_text_styles.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      color: AppColors.lightBackground,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('assets/images/about.png', height: 300),
          ),
          const SizedBox(width: 40),
          const Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Quem Somos', style: AppTextStyles.sectionTitle),
                SizedBox(height: 20),
                Text(
                  'A Vega Facilities atua há mais de 8 anos oferecendo excelência em serviços de engenharia elétrica, civil, iluminação pública, manutenção predial, limpeza e conservação, coleta de resíduos, segurança de portarias, apoio logístico e serviços gerais.',
                  style: AppTextStyles.body,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
