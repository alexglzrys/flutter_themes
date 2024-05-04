import 'package:flutter/material.dart';
import 'package:themes_flutter_app/widgets/widgets.dart';

class CertificatesScreen extends StatelessWidget {
  const CertificatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Certificates Screen'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('Certificates Screen'),
      ),
    );
  }
}
