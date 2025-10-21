import 'package:flutter/widgets.dart';
import '../widgets/section_title.dart';
import '../widgets/service_card.dart';
import '../core/responsive_layout.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);
    final crossAxisCount = isMobile ? 2 : 4;
    final spacing = isMobile ? 12.0 : 28.0;

    final services = [
      {
        't': 'Serviços de Engenharia e Projetos',
        'i': 'assets/images/service1.png',
      },
      {'t': 'Facilities', 'i': 'assets/images/service2.png'},
      {'t': 'Manutenção Predial', 'i': 'assets/images/service5.png'},
      {'t': 'Iluminação Pública', 'i': 'assets/images/service7.png'},
      {'t': 'Coleta de Resíduos', 'i': 'assets/images/service1.png'},
      {'t': 'Instalação e Manutenção', 'i': 'assets/images/service6.png'},
      {'t': 'Combate a Incêndio', 'i': 'assets/images/service8.png'},
      {'t': 'Locação de Mão de Obra', 'i': 'assets/images/service4.png'},
    ];

    return Container(
      color: const Color(0xFFFFFFFF),
      padding: EdgeInsets.symmetric(
        vertical: 60,
        horizontal: isMobile ? 20 : 400,
      ),
      child: Column(
        children: [
          const SectionTitle(title: 'Nossos Serviços'),
          SizedBox(height: isMobile ? 30 : 60),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: services.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              mainAxisSpacing: spacing,
              crossAxisSpacing: spacing,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) {
              final s = services[index];
              return ServiceCard(title: s['t']!, assetImage: s['i']!);
            },
          ),
        ],
      ),
    );
  }
}
