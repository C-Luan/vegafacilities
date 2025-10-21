import 'package:flutter/widgets.dart';
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
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 60,
        horizontal: isMobile ? 16 : 160,
      ),
      child: Column(
        children: [
          const Text(
            'EXPERIÊNCIA E CLIENTES',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF17343A),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'A VEGA Facilities orgulha-se de atender instituições de destaque.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 120),

          // Wrap de logos com efeito hover
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 36,
            runSpacing: 24,
            children: logos.map((l) {
              return _HoverLogo(imagePath: l, width: isMobile ? 90 : 140);
            }).toList(),
          ),
             const SizedBox(height: 120),
        ],
      ),
    );
  }
}

/// Widget para aplicar efeito preto e branco + hover colorido
class _HoverLogo extends StatefulWidget {
  final String imagePath;
  final double width;

  const _HoverLogo({required this.imagePath, required this.width});

  @override
  State<_HoverLogo> createState() => _HoverLogoState();
}

class _HoverLogoState extends State<_HoverLogo> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        child: ColorFiltered(
          colorFilter: _hovering
              ? const ColorFilter.mode(
                  Color(0x00000000), // sem filtro (colorido)
                  BlendMode.dst,
                )
              : const ColorFilter.matrix(<double>[
                  0.2126, 0.7152, 0.0722, 0, 0, // Red
                  0.2126, 0.7152, 0.0722, 0, 0, // Green
                  0.2126, 0.7152, 0.0722, 0, 0, // Blue
                  0, 0, 0, 1, 0, // Alpha
                ]),
          child: Image.asset(
            widget.imagePath,
            width: widget.width,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
