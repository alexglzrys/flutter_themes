import 'package:flutter/material.dart';
import 'package:themes_flutter_app/widgets/widgets.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Screen'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('News Screen'),
      ),
    );
  }
}
