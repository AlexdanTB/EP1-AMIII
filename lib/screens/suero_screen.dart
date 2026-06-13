import 'package:flutter/material.dart';

class SueroScreen extends StatelessWidget {
  const SueroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calcular suero')),
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
          FilledButton.icon(
            onPressed: () => {},
            label: Text('Calcular'),
            icon: Icon(Icons.calculate),
          ),
        ],
      ),
    );
  }
}
