import 'package:flutter/material.dart';

class PresionScreen extends StatelessWidget {
  const PresionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calcular presión arterial')),
      body: Column(
        children: [
          TextField(
            controller: siscon,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text('Presión sistólica'),
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: diascon,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text('Presión diastólica'),
              border: OutlineInputBorder(),
            ),
          ),
          FilledButton.icon(
            onPressed: () => mostrarResp(context, calcularPresion(context)),
            label: Text('Calcular'),
            icon: Icon(Icons.calculate),
          ),
        ],
      ),
    );
  }
}

TextEditingController siscon = TextEditingController();
TextEditingController diascon = TextEditingController();

double calcularPresion(context) {
  double presion = 0;
  int sis = int.parse(siscon.text);
  int dias = int.parse(diascon.text);

  presion = dias + (sis - dias) / 3;

  return presion;
}

void mostrarResp(BuildContext context, presion) {
  showDialog(
    context: context,
    builder: (context) =>
        AlertDialog(title: Text('PAM '), content: Text('$presion')),
  );
}
