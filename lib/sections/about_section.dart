import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:vegafacilities/core/responsive_layout.dart';
import '../core/app_colors.dart';
import '../core/app_text_styles.dart';

class AboutSection extends StatelessWidget {
  AboutSection({super.key});

  final List<String> images = [
    'assets/images/gallery1.png',
    'assets/images/gallery2.png',
    'assets/images/gallery3.png',
    'assets/images/gallery4.png',
    'assets/images/gallery5.png',
    'assets/images/gallery6.png',
  ];

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 120,
        horizontal: isMobile ? 24 : 160,
      ),
      color: AppColors.lightBackground,
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/quem_somos.png', height: 70),
                const SizedBox(height: 20),
                Text(
                  'A Vega Facilities atua há mais de 8 anos oferecendo excelência em serviços de engenharia elétrica, civil, iluminação pública, manutenção predial, limpeza e conservação, coleta de resíduos, segurança de portarias, apoio logístico e serviços gerais.',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.bodyLarge,
                ),
                const SizedBox(height: 40),
                _carousel(isMobile),
              ],
            )
          : Row(
              spacing: 40,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/quem_somos.png', height: 80),
                      const SizedBox(height: 20),
                      Text(
                        'A Vega Facilities atua há mais de 8 anos oferecendo excelência em serviços de engenharia elétrica, civil, iluminação pública, manutenção predial, limpeza e conservação, coleta de resíduos, segurança de portarias, apoio logístico e serviços gerais.',
                        style: AppTextStyles.bodyLarge,
                      ),
                    ],
                  ),
                ),
                Expanded(child: _carousel(isMobile)),
              ],
            ),
    );
  }

  Widget _carousel(bool isMobile) {
    return PageStorage(
      bucket: PageStorageBucket(),
      child: CarouselSlider.builder(
        key: const PageStorageKey('vega_carousel'),
        itemCount: images.length,
        itemBuilder: (context, index, realIndex) {
          final img = images[index];
          return ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset(
              img,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          );
        },
        options: CarouselOptions(
          height: isMobile ? 220 : 400,
          enlargeCenterPage: true,
          pageSnapping: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          viewportFraction: isMobile ? 0.9 : 0.7, 
        ),
      ),
    );
  }
}
