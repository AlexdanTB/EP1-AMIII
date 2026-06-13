import 'package:evp_app/screens/vista_principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Eval1());
}

class Eval1 extends StatelessWidget {
  const Eval1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Cuerpo());
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return VistaPrincipal();
  }
}
