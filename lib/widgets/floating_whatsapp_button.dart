import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../core/app_colors.dart';

class FloatingWhatsAppButton extends StatelessWidget {
  const FloatingWhatsAppButton({super.key});

  Future<void> _openWhatsApp() async {
    const phoneNumber = '5591985853461'; // seu número com DDI + DDD
    final url = 'https://wa.me/$phoneNumber';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 24,
      right: 24,
      child: GestureDetector(
        onTap: _openWhatsApp,
        child: Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: const Color(0xFF25D366),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF25D366).withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(2, 4),
              ),
            ],
          ),
          child: Center(
            child: SvgPicture.asset(
              'images/whatsapp.svg',
              width: 34,
              height: 34,
              // colorFilter: const ColorFilter.mode(
              //   Colors.white,
              //   BlendMode.srcIn,
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
