import 'package:flutter/material.dart';

import 'package:gosafe_driver/src/widgets/titleCard.dart';
import 'package:gosafe_driver/src/widgets/centeredCard.dart';

import 'package:gosafe_driver/src/widgets/expandedButton.dart';
import 'package:gosafe_driver/src/widgets/widget_registro.dart';
import 'package:gosafe_driver/src/widgets/customOutlinedButton.dart';

class LicenciaPage extends StatefulWidget {
  LicenciaPage({Key key}) : super(key: key);
  static String id = 'licencia_page';
  @override
  _LicenciaPageState createState() => _LicenciaPageState();
}

class _LicenciaPageState extends State<LicenciaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7DAE0F),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                headerRegistro(),
                TitleCard(text: 'Licencia de conducir'),
                licenciaInput(),
                licenciaConducir('frente'),
                licenciaConducir('atras'),
                fechaCaducidadInput(),
                ExpandedButton(child: Text('Finalizar')),
                SizedBox(height: 15),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget licenciaInput() {
    return CenteredCard(
      children: [
        Text('Numero de Licencia de conducir'),
        TextField(
          cursorColor: Colors.greenAccent,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26, width: 1.0),
            ),
            hintText: 'Ej: 221333455',
          ),
        )
      ],
    );
  }

  Widget fechaCaducidadInput() {
    return CenteredCard(
      children: [
        Text('Fecha de Caducidad'),
        TextField(
          cursorColor: Colors.greenAccent,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26, width: 1.0),
            ),
            hintText: 'Ej: 22/05/2025',
          ),
        )
      ],
    );
  }

  Widget licenciaConducir(String posicion) {
    return CenteredCard(
      children: [
        Text('Licencia de conducir ($posicion)'),
        Image(image: AssetImage('assets/images/id_small.png')),
        SizedBox(height: 15),
        CustomOutlinedButton(
          child: Text(
            'Añadir',
            style: TextStyle(
              color: Colors.lightGreen[800],
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
