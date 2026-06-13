import 'package:flutter/material.dart';

class PresionScreen extends StatelessWidget {
  const PresionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text('Presión sistólica'),
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text('Presión diastólica'),
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
