import 'package:flutter/widgets.dart';
import 'package:vegafacilities/widgets/floating_whatsapp_button.dart';
import 'core/app_colors.dart';
import 'sections/header_section.dart';
import 'sections/hero_section.dart';
import 'sections/about_section.dart';
import 'sections/highlight_section.dart';
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

class VegaHomePage extends StatefulWidget {
  const VegaHomePage({super.key});

  @override
  State<VegaHomePage> createState() => _VegaHomePageState();
}

class _VegaHomePageState extends State<VegaHomePage> {
  final ScrollController _scrollController = ScrollController();

  // Keys para cada seção
  final GlobalKey heroKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey servicesKey = GlobalKey();
  final GlobalKey galleryKey = GlobalKey();
  final GlobalKey clientsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightBackground,
      child: Stack(
        children: [
          /// Conteúdo rolável
          Positioned.fill(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  // const SizedBox(height: 50),
                  // Atribuímos as chaves às seções
                  HeroSection(key: heroKey),
                  AboutSection(key: aboutKey),
                  const HighlightSection(),
                  ServicesSection(key: servicesKey),
                  GallerySection(key: galleryKey),
                  const EngineeringSection(),
                  ClientsSection(key: clientsKey),
                  ContactSection(key: contactKey),
                ],
              ),
            ),
          ),

          /// Header fixo com callback
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: HeaderSection(
              onMenuTap: (menu) {
                switch (menu) {
                  case 'Início':
                    _scrollToSection(heroKey);
                    break;
                  case 'Quem Somos':
                    _scrollToSection(aboutKey);
                    break;
                  case 'Serviços':
                    _scrollToSection(servicesKey);
                    break;
                  case 'Galeria':
                    _scrollToSection(galleryKey);
                    break;
                  case 'Clientes':
                    _scrollToSection(clientsKey);
                    break;
                  case 'Contato':
                    _scrollToSection(contactKey);
                    break;
                }
              },
            ),
          ),
          FloatingWhatsAppButton(),
        ],
      ),
    );
  }
}
