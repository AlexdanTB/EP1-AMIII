import 'package:flutter/material.dart';

class SueroScreen extends StatelessWidget {
  const SueroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text('Volumen a infundir (mL)'),
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text('Tiempo (horas)'),
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text('Factor de goteo'),
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
