import 'package:flutter/material.dart';
import 'package:themes_flutter_app/widgets/widgets.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('About Screen'),
      ),
    );
  }
}
