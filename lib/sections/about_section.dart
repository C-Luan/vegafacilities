import 'package:flutter/widgets.dart';
import 'package:vegafacilities/core/responsive_layout.dart';
import '../core/app_colors.dart';
import '../core/app_text_styles.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 120,
        horizontal: isMobile ? 40 : 160,
      ),
      color: AppColors.lightBackground,
      child: Row(
        spacing: 40,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/quem_somos.png', height: 80),
                SizedBox(height: 20),
                Text(
                  'A Vega Facilities atua há mais de 8 anos oferecendo excelência em serviços de engenharia elétrica, civil, iluminação pública, manutenção predial, limpeza e conservação, coleta de resíduos, segurança de portarias, apoio logístico e serviços gerais.',
                  style: AppTextStyles.bodyLarge,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset('assets/images/about.png', height: 500),
          ),
        ],
      ),
    );
  }
}
