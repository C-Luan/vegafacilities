import 'package:flutter/widgets.dart';
import 'core/app_colors.dart';
import 'sections/header_section.dart';
import 'sections/hero_section.dart';
import 'sections/about_section.dart';
import 'sections/services_section.dart';
import 'sections/gallery_section.dart';
import 'sections/engineering_section.dart';
import 'sections/clients_section.dart';
import 'sections/contact_section.dart';

void main() {
  runApp(const VegaFacilitiesApp());
}

class VegaFacilitiesApp extends StatelessWidget {
  const VegaFacilitiesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr,
      child: VegaHomePage(),
    );
  }
}

class VegaHomePage extends StatelessWidget {
  const VegaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightBackground,
      child: Stack(
        children: [
          /// Conteúdo rolável
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  SizedBox(height: 45), // Espaço para o header fixo
                  HeroSection(),
                  AboutSection(),
                  ServicesSection(),
                  GallerySection(),
                  EngineeringSection(),
                  ClientsSection(),
                  ContactSection(),
                ],
              ),
            ),
          ),

          /// Header fixo no topo
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: HeaderSection(),
          ),
        ],
      ),
    );
  }
}
