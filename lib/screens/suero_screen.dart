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
            controller: volcon,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text('Volumen a infundir (mL)'),
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: tiempocon,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text('Tiempo (horas)'),
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: factorcon,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text('Factor de goteo (Nro gotas/mL)'),
              border: OutlineInputBorder(),
            ),
          ),
          FilledButton.icon(
            onPressed: () => mostrarResp(context, calculargotas()),
            label: Text('Calcular'),
            icon: Icon(Icons.calculate),
          ),
        ],
      ),
    );
  }
}

TextEditingController volcon = TextEditingController();
TextEditingController tiempocon = TextEditingController();
TextEditingController factorcon = TextEditingController();

String calculargotas() {
  double volumen = double.parse(volcon.text);
  double tiempo = double.parse(tiempocon.text);
  double factor = double.parse(factorcon.text);

  if (tiempo <= 0) {
    return "Error: el tiempo debe ser mayor a 0";
  } else {
    return '${(volumen * factor) / (tiempo * 60)}/min';
  }
}

void mostrarResp(BuildContext context, goteo) {
  showDialog(
    context: context,
    builder: (context) =>
        AlertDialog(title: Text('Factor de goteo'), content: Text('$goteo')),
  );
}
