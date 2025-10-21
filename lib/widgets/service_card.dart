import 'package:flutter/widgets.dart';
import '../core/app_colors.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String assetImage;
  const ServiceCard({
    super.key,
    required this.title,
    required this.assetImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // icon / image circle
        Container(
          // width: 142,
          height: 150,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: AppColors.primary.withOpacity(0.08)),
            color: AppColors.lightBackground,
          ),
          child: Image.asset(assetImage, fit: BoxFit.contain),
        ),
        // const SizedBox(height: 12),
        // SizedBox(
        //   width: 140,
        //   child: Text(
        //     title,
        //     textAlign: TextAlign.center,
        //     style: const TextStyle(
        //       fontSize: 14,
        //       fontWeight: FontWeight.w600,
        //       color: AppColors.primary,
        //     ),
        //   ),
        // )
      ],
    );
  }
}
