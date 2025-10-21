import 'package:flutter/widgets.dart';
import '../widgets/section_title.dart';
import '../core/responsive_layout.dart';

class ClientsSection extends StatelessWidget {
  const ClientsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);
    final logos = [
      'assets/images/client1.png',
      'assets/images/client2.png',
      'assets/images/client3.png',
      'assets/images/client4.png',
      'assets/images/client5.png',
      'assets/images/client6.png',
    ];

    return Container(
      color: const Color(0xFFFFFFFF),
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: isMobile ? 16 : 80),
      child: Column(
        children: [
          const Text(
            'EXPERIÊNCIA E CLIENTES',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF17343A)),
          ),
          const SizedBox(height: 8),
          const Text('A VEGA Facilities orgulha-se de atender instituições de destaque.'),
          const SizedBox(height: 28),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 36,
            runSpacing: 24,
            children: logos.map((l) {
              return SizedBox(
                width: isMobile ? 90 : 140,
                child: Image.asset(l, fit: BoxFit.contain),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
