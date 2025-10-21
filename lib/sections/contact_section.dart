import 'package:flutter/widgets.dart';
import '../widgets/footer.dart';
import '../core/responsive_layout.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);

    return Column(
      children: [
        Container(
          color: const Color(0xFFFFFFFF),
          padding: EdgeInsets.symmetric(
            vertical: 120,
            horizontal: isMobile ? 16 : 80,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/map.png',
                        fit: BoxFit.cover,
                        height: isMobile ? 180 : 260,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 36),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'ENTRE EM CONTATO',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 14),
                    ContactItem(
                      icon: '📞',
                      text: '91 98585 3461 | 96 99112 0240',
                    ),
                    ContactItem(
                      icon: '📍',
                      text:
                          'Conj. Nova Marambaia TV.1 - Sala 101B\nCastanheira - Belém-PA',
                    ),
                    ContactItem(
                      icon: '✉️',
                      text: 'compras@vegafacilites.com.br',
                    ),
                    SizedBox(height: 18),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Footer(),
      ],
    );
  }
}

class ContactItem extends StatelessWidget {
  final String icon;
  final String text;
  const ContactItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(icon),
          const SizedBox(width: 10),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
