import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vegafacilities/core/app_colors.dart';
import '../widgets/footer.dart';
import '../core/responsive_layout.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _launchInstagram() async {
    final url = Uri.parse('https://www.instagram.com/vegas.facilities/');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> _launchWhatsApp() async {
    const phoneNumber = '5591985853461';
    final uri = Uri.parse('https://wa.me/$phoneNumber');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> _openMaps() async {
    final uri = Uri.parse(
      'https://www.google.com/maps/place/Tv.+Um,+281+-+Castanheira,+Belém+-+PA,+66645-880',
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> _sendEmail() async {
    final uri = Uri.parse('mailto:compras@vegafacilites.com.br');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);

    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(
            vertical: isMobile ? 80 : 120,
            horizontal: isMobile ? 16 : 200,
          ),
          child: isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _contactInfo(isMobile),
                    const SizedBox(height: 36),
                    _mapContainer(isMobile),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(flex: 1, child: _mapContainer(isMobile)),
                    // const SizedBox(width: 36),
                    Expanded(flex: 1, child: _contactInfo(isMobile)),
                  ],
                ),
        ),
        const Footer(),
      ],
    );
  }

  Widget _mapContainer(bool isMobile) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: isMobile ? 450 : 450,
        child: WebViewX(
          initialContent: '''
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d705.0972673659383!2d-48.434225854503154!3d-1.396967113756565!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x92a48afeaf8af4f9%3A0xb12c734fbf3f4699!2sTv.%20Um%2C%20281%20-%20Castanheira%2C%20Bel%C3%A9m%20-%20PA%2C%2066645-880!5e0!3m2!1spt-BR!2sbr!4v1761082179999!5m2!1spt-BR!2sbr" width="400" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

          ''',
          initialSourceType: SourceType.html,
          height: isMobile ? 450 : 450,
          width: 600,
        ),
      ),
    );
  }

  Widget _contactInfo(bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ENTRE EM CONTATO',
          style: TextStyle(
            fontSize: 22,
            fontFamily: GoogleFonts.metrophobic().fontFamily,
            fontWeight: FontWeight.bold,
            color: AppColors.primary
          ),
        ),
        const SizedBox(height: 14),

        HoverContactItem(
          icon: FontAwesomeIcons.whatsapp,
          text: '91 98585 3461 | 96 99112 0240',
          color: const Color(0xFF25D366),
          onTap: _launchWhatsApp,
        ),
        HoverContactItem(
          icon: FontAwesomeIcons.locationDot,
          text: 'Conj. Nova Marambaia TV.1 - Sala 101B\nCastanheira - Belém-PA',
          color: Colors.redAccent,
          onTap: _openMaps,
        ),
        HoverContactItem(
          icon: FontAwesomeIcons.envelope,
          text: 'compras@vegafacilites.com.br',
          color: Colors.orangeAccent,
          onTap: _sendEmail,
        ),
        const SizedBox(height: 18),
        HoverContactItem(
          icon: FontAwesomeIcons.instagram,
          text: '@vegas.facilities',
          color: const Color(0xFFC13584),
          onTap: _launchInstagram,
        ),
      ],
    );
  }
}

class HoverContactItem extends StatefulWidget {
  final IconData icon;
  final String text;
  final Color color;
  final VoidCallback onTap;

  const HoverContactItem({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
    required this.onTap,
  });

  @override
  State<HoverContactItem> createState() => _HoverContactItemState();
}

class _HoverContactItemState extends State<HoverContactItem> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: _hovering
              ? (Matrix4.identity()..scale(1.05))
              : Matrix4.identity(),
          curve: Curves.easeOut,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 28,
                child: FaIcon(
                  widget.icon,
                  color: _hovering
                      ? widget.color.withOpacity(0.9)
                      : widget.color.withOpacity(0.7),
                  size: _hovering ? 20 : 18,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: GoogleFonts.metrophobic().fontFamily,
                    color: _hovering
                        ? widget.color.withOpacity(0.9)
                        : Colors.black87,
                    fontWeight: _hovering ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
