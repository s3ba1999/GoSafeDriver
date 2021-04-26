import 'package:flutter/material.dart';

import 'package:gosafe_driver/src/widgets/titleCard.dart';
import 'package:gosafe_driver/src/widgets/centeredCard.dart';
import 'package:gosafe_driver/src/widgets/expandedButton.dart';

import 'package:gosafe_driver/src/widgets/widget_registro.dart';
import 'package:gosafe_driver/src/widgets/customOutlinedButton.dart';


class TargetaIDPage extends StatefulWidget {
  TargetaIDPage({Key key}) : super(key: key);
  static String id = 'tarjeta_id_page';
  @override
  _TargetaIDPageState createState() => _TargetaIDPageState();
}

class _TargetaIDPageState extends State<TargetaIDPage> {
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
                licenciaConducir('frente'),
                licenciaConducir('atras'),
                ExpandedButton(child: Text('Finalizar'))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget licenciaConducir(String posicion) {
    return CenteredCard(
      children: [
        Text('Tarjeta de identificacion ' + '(' + posicion + ')'),
        Image.asset('assets/images/id_big.png'),
        SizedBox(height: 15),
        CustomOutlinedButton(
          child: Text(
            'Añadir',
            style: TextStyle(color: Colors.lightGreen[800]),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
