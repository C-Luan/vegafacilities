import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          height: 1000,
        ),
        Container(
          width: double.infinity,
          height: 1000,
          color: Colors.black.withOpacity(0.2),
        ),
        Positioned.fill(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/logo_branca.png',
                  // width: double.infinity,
                  fit: BoxFit.contain,

                  height: 250,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
