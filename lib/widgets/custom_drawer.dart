import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themes_flutter_app/providers/theme_provider.dart';
import 'package:themes_flutter_app/routes/routes.dart';

// Drawer personalizado
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          _Header(),
          _Menu(),
          _OptionTheme(),
        ],
      ),
    );
  }
}

// Sección de navegación
class _Menu extends StatelessWidget {
  const _Menu();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 4),
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => ListTile(
                title: Text(pageRoutes[index].title),
                leading: Icon(
                  pageRoutes[index].icon,
                  color: const Color(0xff5F1A37),
                ),
                trailing: const Icon(Icons.chevron_right_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => pageRoutes[index].screen,
                    ),
                  );
                },
              ),
          separatorBuilder: (context, index) => const Divider(height: 6),
          itemCount: pageRoutes.length),
    );
  }
}

// Sección de controles de selección de tema para la aplicaciónn
class _OptionTheme extends StatelessWidget {
  const _OptionTheme();

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return SafeArea(
      top: false,
      left: false,
      right: false,
      child: Column(
        children: [
          ListTile(
            visualDensity: VisualDensity.compact,
            title: const Text('Modo Dark'),
            subtitle: const Text('Aplicar modo oscuro'),
            trailing: Switch.adaptive(
              value: themeProvider.isDarkTheme,
              activeColor: const Color(0xff5F1A37),
              onChanged: (value) => themeProvider.isDarkTheme = value,
            ),
          ),
          ListTile(
            visualDensity: VisualDensity.compact,
            title: const Text('Modo Personalizado'),
            subtitle: const Text('Aplicar modo natural'),
            trailing: Switch.adaptive(
              value: themeProvider.isCustomTheme,
              activeColor: const Color(0xff5F1A37),
              onChanged: (value) => themeProvider.isCustomTheme = value,
            ),
          ),
        ],
      ),
    );
  }
}

// Sección del Header para Drawer (avatar y nombre del usuario)
class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        height: 200,
        decoration: const BoxDecoration(
            color: Color(0xFF5F1A37),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50))),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
              radius: 50,
              backgroundColor: Colors.red,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Alejandro González Reyes',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
