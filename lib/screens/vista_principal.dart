import 'package:flutter/material.dart';

class VistaPrincipal extends StatefulWidget {
  const VistaPrincipal({super.key});

  @override
  State<VistaPrincipal> createState() => _VistaPrincipalState();
}

class _VistaPrincipalState extends State<VistaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vista Principal')),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Principal'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_outlined),
            label: 'Suero',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_rounded),
            label: 'Presion',
          ),
        ],
      ),
    );
  }
}
