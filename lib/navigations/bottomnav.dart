import 'package:evp_app/screens/vista_principal.dart';
import 'package:flutter/material.dart';
import 'package:evp_app/screens/presion_screen.dart';
import 'package:evp_app/screens/suero_screen.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int indice = 0;
  List<Widget> listascreens = [
    VistaPrincipal(),
    SueroScreen(),
    PresionScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listascreens[indice],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() {
          indice = value;
        }),
        currentIndex: indice,
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
