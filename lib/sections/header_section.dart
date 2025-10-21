// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class HeaderSection extends StatefulWidget {
  final Function(String)? onMenuTap;

  const HeaderSection({super.key, this.onMenuTap});

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  bool _isMenuOpen = false;

  final menuItems = const [
    'Início',
    'Quem Somos',
    'Serviços',
    'Galeria',
    'Clientes',
    'Contato',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 800;

    return Container(
      color: AppColors.lightBackground,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 HEADER SUPERIOR
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // LOGO
              Image.asset('assets/images/logo.png', height: 40),

              // MENU DESKTOP
              if (!isMobile)
                Row(
                  children: [
                    for (final title in menuItems) _menuItem(title),
                    const SizedBox(width: 20),
                    _buttonColaborador(),
                  ],
                )
              else
                IconButton(
                  icon: Icon(
                    _isMenuOpen ? Icons.close : Icons.menu,
                    color: AppColors.primary,
                    size: 30,
                  ),
                  onPressed: () => setState(() => _isMenuOpen = !_isMenuOpen),
                ),
            ],
          ),

          // 🔹 MENU MOBILE (Dropdown)
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            height: _isMenuOpen ? (menuItems.length * 48 + 70).toDouble() : 0,
            curve: Curves.easeInOut,
            child: _isMenuOpen
                ? Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        for (final title in menuItems)
                          GestureDetector(
                            onTap: () {
                              widget.onMenuTap?.call(title);
                              setState(() => _isMenuOpen = false);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 16),
                              child: Text(
                                title,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        const Divider(color: Colors.white24, height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: _buttonColaborador(),
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }

  Widget _menuItem(String title) => GestureDetector(
        onTap: () => widget.onMenuTap?.call(title),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            title,
            style: const TextStyle(
              color: AppColors.primary,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );

  Widget _buttonColaborador() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(6),
        ),
        child: const Text(
          'Área do Colaborador',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
}
