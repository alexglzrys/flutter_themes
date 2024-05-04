import 'package:flutter/material.dart';
import 'package:themes_flutter_app/widgets/widgets.dart';

class PromotionsScreen extends StatelessWidget {
  const PromotionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Promotions Screen'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('Promotions Screen'),
      ),
    );
  }
}
