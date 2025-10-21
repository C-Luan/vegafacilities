import 'package:flutter/widgets.dart';
import '../core/app_colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            '© Vega Facilities • Todos os direitos reservados',
            style: TextStyle(color: AppColors.textPrimary),
          ),
          Text('Desenvolvido por Vega', style: TextStyle(color: AppColors.textPrimary)),
        ],
      ),
    );
  }
}
