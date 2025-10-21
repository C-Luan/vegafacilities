import 'package:flutter/material.dart';
import '../core/responsive_layout.dart';

class EngineeringSection extends StatelessWidget {
  const EngineeringSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);
    return Container(
      color: const Color(0xFF0E3A42), // similar tone to mockup dark block
      padding: EdgeInsets.symmetric(
        vertical: 100,
        horizontal: isMobile ? 20 : 80,
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/titulo_engenharia.png',
            // width: double.infinity,
            fit: BoxFit.cover,
            height: isMobile ? 100 : 200,
          ),
          // const Text(
          //   'SOLUÇÕES DE ENGENHARIA COM\nTÉCNICA, PLANEJAMENTO E RESULTADOS.',
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     color: Color(0xFF00B8D9),
          //     fontSize: 26,
          //     fontWeight: FontWeight.bold,
          //     letterSpacing: 0.6,
          //   ),
          // ),
          const SizedBox(height: 18),
          const Text(
            'A Vega Facilities conta com uma equipe especializada em projetos elétricos, civis e de infraestrutura, garantindo segurança, eficiência e modernidade em cada projeto.',
            textAlign: TextAlign.center,
            // ignore: use_full_hex_values_for_flutter_colors
            style: TextStyle(
              color: Color.fromARGB(255, 252, 252, 252),
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 22),
          Padding(
            padding: EdgeInsets.only(
              left: isMobile ? 0 : 80,
              right: isMobile ? 0 : 80,
            ),
            child: Container(
              width: double.infinity,
              height: 260,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ListItem(
                    text: 'Elaboração e execução de projetos elétricos e civis',
                  ),
                  ListItem(text: 'Fiscalização e gerenciamento de obras'),
                  ListItem(text: 'Planejamento e otimização de recursos'),
                  ListItem(
                    text:
                        'Consultoria técnica para empreendimentos públicos e privados',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Cada projeto é conduzido com foco em qualidade, sustentabilidade e resultados',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
               fontSize: 16,
               
              // fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String text;
  const ListItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          const Icon(Icons.check_circle_outline, color: Color(0xFF00B8D9)),
          const SizedBox(width: 10),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
