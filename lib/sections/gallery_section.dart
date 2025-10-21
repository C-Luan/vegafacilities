import 'package:flutter/widgets.dart';
import '../core/responsive_layout.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);
    final images = [
      'assets/images/gallery1.png',
      'assets/images/gallery2.png',
      'assets/images/gallery3.png',
    ];

    return Container(
      color: const Color(0xFFFFFFFF),
      padding: EdgeInsets.symmetric(vertical: 48, horizontal: isMobile ? 16 : 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: images.map((img) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(img, fit: BoxFit.fill, height: isMobile ? 220: 360),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
