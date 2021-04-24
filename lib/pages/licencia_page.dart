import 'package:flutter/material.dart';
import 'package:gosafe_driver/widgets/CenteredCard.dart';
import 'package:gosafe_driver/widgets/ExpandedButton.dart';
import 'package:gosafe_driver/widgets/widget_registro.dart';

class LicenciaPage extends StatefulWidget {
  LicenciaPage({Key key}) : super(key: key);
  static String id = 'licencia_page';
  @override
  _LicenciaPageState createState() => _LicenciaPageState();
}

class _LicenciaPageState extends State<LicenciaPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff7DAE0F),
      body: Column(
        children: [
          HeaderRegistro(),
          CenteredCard(children: [Text('Licencia de conducir')]),
          licenciaInput(),
          licenciaConducir('frente'),
          licenciaConducir('atras'),
          fechaCaducidadInput(),
          ExpandedButton(child: Text('Finalizar'))
        ],
      ),
    ));
  }

  Widget licenciaInput() {
    return (CenteredCard(children: [
      Text('Numero de Licencia de conducir'),
      TextField(
        cursorColor: Colors.greenAccent,
        decoration: new InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26, width: 1.0),
          ),
          hintText: 'Ej: 221333455',
        ),
      )
    ]));
  }

  Widget fechaCaducidadInput() {
    return (CenteredCard(children: [
      Text('Fecha de Caducidad'),
      TextField(
        cursorColor: Colors.greenAccent,
        decoration: new InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26, width: 1.0),
          ),
          hintText: 'Ej: 22/05/2025',
        ),
      )
    ]));
  }

  Widget licenciaConducir(String posicion) {
    return (CenteredCard(children: [
      Text('Licencia de conducir ' + '(' + posicion + ')'),
      ElevatedButton(
        onPressed: () {},
        child: Text('Añadir'),
      )
    ]));
  }
}
