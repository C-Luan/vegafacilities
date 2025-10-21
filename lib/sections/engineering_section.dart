import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/section_title.dart';
import '../core/responsive_layout.dart';

class EngineeringSection extends StatelessWidget {
  const EngineeringSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);
    return Container(
      color: const Color(0xFF0E3A42), // similar tone to mockup dark block
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: isMobile ? 20 : 80),
      child: Column(
        children: [
          const Icon(Icons.engineering, size: 48, color: Color(0xFF00B8D9)),
          const SizedBox(height: 16),
          const Text(
            'SOLUÇÕES DE ENGENHARIA COM\nTÉCNICA, PLANEJAMENTO E RESULTADOS.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF00B8D9),
              fontSize: 26,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.6,
            ),
          ),
          const SizedBox(height: 18),
          const Text(
            'A Vega Facilities conta com uma equipe especializada em projetos elétricos, civis e de infraestrutura, garantindo segurança, eficiência e modernidade em cada projeto.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFFFFFFFF70), fontSize: 15),
          ),
          const SizedBox(height: 22),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              children: const [
                ListItem(text: 'Elaboração e execução de projetos elétricos e civis'),
                ListItem(text: 'Fiscalização e gerenciamento de obras'),
                ListItem(text: 'Planejamento e otimização de recursos'),
                ListItem(text: 'Consultoria técnica para empreendimentos públicos e privados'),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Cada projeto é conduzido com foco em qualidade, sustentabilidade e resultados',
            style: TextStyle(color: Color(0xFFFFFFFF), fontWeight: FontWeight.w700),
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
