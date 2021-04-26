import 'package:flutter/material.dart';

import 'package:gosafe_driver/src/widgets/titleCard.dart';
import 'package:gosafe_driver/src/widgets/centeredCard.dart';

import 'package:gosafe_driver/src/widgets/expandedButton.dart';
import 'package:gosafe_driver/src/widgets/widget_registro.dart';
import 'package:gosafe_driver/src/widgets/customOutlinedButton.dart';

class ConfirmarIDPage extends StatefulWidget {
  static String id = 'confirmar_id_page';
  ConfirmarIDPage({Key key}) : super(key: key);

  @override
  _ConfirmarIDPageState createState() => _ConfirmarIDPageState();
}

class _ConfirmarIDPageState extends State<ConfirmarIDPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7DAE0F),
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerRegistro(),
            TitleCard(text: 'Confirmacion de ID'),
            CenteredCard(
              children: [
                SizedBox(height: 15),
                Image.asset(
                  'assets/images/mi_foto_example.png',
                  width: 350,
                  height: 200,
                ),
                Image.asset(
                  'assets/images/mi_foto_example.png',
                  width: 350,
                  height: 200,
                ),
                SizedBox(height: 15),
                addButton(),
                informationText(),
              ],
            ),
            ExpandedButton(child: Text('Finalizar'))
          ],
        ),
      ),
    );
  }

  Widget informationText() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Necesitamos que te tomes una foto de usted sosteniendo la licencia de conducir. La foto debe mostrar tu rostro y la licencia de conducir. Debe ser tomada en un ambiente con buena luz y buena calidad. No se permite fotos con gafas de sol',
      ),
    );
  }

  Widget addButton() {
    return CustomOutlinedButton(
      child: Text(
        'Añadir',
        style: TextStyle(color: Colors.lightGreen[800]),
      ),
      onPressed: () {},
    );
  }
}
