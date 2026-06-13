import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/tmnt.jpg")),
        ),
        child: Expanded(child: lista2(context)),
      ),
    );
  }
}

Future<List> leerJuegos(String url) async {
  final peticion = await http.get(Uri.parse(url));
  return jsonDecode(peticion.body)['videojuegos'];
}

Widget lista2(context) {
  String url = "https://jritsqmet.github.io/web-api/videojuegos.json";
  return (FutureBuilder(
    future: leerJuegos(url),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        final data = snapshot.data!;
        return (ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];
            return (ListTile(
              tileColor: Color.fromRGBO(52, 52, 25, 1),
              title: Text('${item['titulo']}'),
              subtitle: Text('Precio: ${item['precio']}'),
              leading: Image.network('${item['imagen']}'),
            ));
          },
        ));
      } else {
        return (CircularProgressIndicator());
      }
    },
  ));
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
