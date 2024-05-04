import 'package:flutter/material.dart';
import 'package:themes_flutter_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
