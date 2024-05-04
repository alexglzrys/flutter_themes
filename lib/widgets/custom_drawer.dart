import 'package:flutter/material.dart';

// Drawer personalizado
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          _Header(),
          Spacer(),
          _OptionTheme(),
        ],
      ),
    );
  }
}

// Sección de controles de selección de tema para la aplicaciónn
class _OptionTheme extends StatelessWidget {
  const _OptionTheme();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          visualDensity: VisualDensity.compact,
          title: const Text('Modo Light'),
          subtitle: const Text('Aplicar modo claro'),
          trailing: Switch.adaptive(
            value: true,
            activeColor: const Color(0xff5F1A37),
            onChanged: (value) {},
          ),
        ),
        ListTile(
          visualDensity: VisualDensity.compact,
          //dense: true,
          title: const Text('Modo Dark'),
          subtitle: const Text('Aplicar modo oscuro'),
          trailing: Switch.adaptive(
            value: true,
            activeColor: const Color(0xff5F1A37),
            onChanged: (value) {},
          ),
        ),
        ListTile(
          //dense: true,
          visualDensity: VisualDensity.compact,
          title: const Text('Modo Personalizado'),
          trailing: Switch.adaptive(
            value: true,
            activeColor: const Color(0xff5F1A37),
            onChanged: (value) {},
          ),
        ),
      ],
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
