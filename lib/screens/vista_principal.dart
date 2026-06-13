import 'package:flutter/material.dart';

class VistaPrincipal extends StatelessWidget {
  const VistaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vista Principal'),
        leading: IconButton(
          onPressed: () => mostrarInfo(context),
          icon: Icon(Icons.info),
        ),
      ),
      body: Image.asset("assets/images/tmnt.jpg"),
    );
  }
}

void mostrarInfo(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Ejercicios de Programación'),
      content: Text(
        'Programador: AlexdanTB \n Carrera: Desarrollo de Software',
      ),
    ),
  );
}
