import 'package:flutter/material.dart';
import 'package:themes_flutter_app/widgets/widgets.dart';

class BenefitsScreen extends StatelessWidget {
  const BenefitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Benefits Screen'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('Benefits Screen'),
      ),
    );
  }
}
