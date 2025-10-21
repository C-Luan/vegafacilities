// ignore_for_file: deprecated_member_use

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import '../core/responsive_layout.dart';
import '../core/app_colors.dart';

class GallerySection extends StatefulWidget {
  const GallerySection({super.key});

  @override
  State<GallerySection> createState() => _GallerySectionState();
}

class _GallerySectionState extends State<GallerySection> {
  int _currentIndex = 0;

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
      color: AppColors.lightBackground,

      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 40 : 120,
        horizontal: isMobile ? 10 : 400,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'GALERIA DE PROJETOS',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
              letterSpacing: 0.6,
            ),
          ),
          const SizedBox(height: 30),
          CarouselSlider.builder(
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
              height: isMobile ? 200 : 400,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              viewportFraction: isMobile ? 0.9 : 0.7,
              onPageChanged: (index, reason) {
                setState(() => _currentIndex = index);
              },
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => setState(() => _currentIndex = entry.key),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: _currentIndex == entry.key ? 16 : 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: _currentIndex == entry.key
                        ? AppColors.secondary
                        : AppColors.primary.withOpacity(0.3),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
