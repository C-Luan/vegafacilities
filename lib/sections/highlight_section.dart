import 'package:flutter/widgets.dart';
import '../core/app_colors.dart';
import '../core/responsive_layout.dart';

class HighlightSection extends StatelessWidget {
  const HighlightSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);
    return Container(
      width: double.infinity,
      color: const Color(0xFF163840), // fundo azul petróleo
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 60 : 150,
        horizontal: isMobile ? 20 : 140,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/excelencia_em_servicos.png',
            // width: double.infinity,
            fit: BoxFit.cover,
            // height: 40,
          ),
          SizedBox(height: 20),
          Text(
            'Mais de 8 anos de experiência em engenharia, manutenção predial, iluminação pública, '
            'gestão de resíduos e serviços gerais.\nConte com a Vega Facilities para soluções eficientes e personalizadas.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 16,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
