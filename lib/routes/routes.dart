import 'package:flutter/material.dart';
import 'package:themes_flutter_app/screens/screens.dart';

// Listado de rutas de la aplicación
final pageRoutes = [
  _Route(
    icon: Icons.home,
    title: 'Inicio',
    screen: const HomeScreen(),
  ),
  _Route(
    icon: Icons.gamepad,
    title: 'Acerca de',
    screen: const AboutScreen(),
  ),
  _Route(
    icon: Icons.gif,
    title: 'Certificados',
    screen: const CertificatesScreen(),
  ),
  _Route(
    icon: Icons.kayaking,
    title: 'Beneficios',
    screen: const BenefitsScreen(),
  ),
  _Route(
    icon: Icons.pregnant_woman,
    title: 'Promociones',
    screen: const PromotionsScreen(),
  ),
  _Route(
    icon: Icons.newspaper,
    title: 'Novedades',
    screen: const NewsScreen(),
  ),
];

// Clase para modelar la definición de una ruta
class _Route {
  final IconData icon;
  final String title;
  final Widget screen;

  _Route({required this.icon, required this.title, required this.screen});
}
