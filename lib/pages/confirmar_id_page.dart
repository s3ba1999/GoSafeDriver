import 'package:flutter/material.dart';
import 'package:gosafe_driver/widgets/CenteredCard.dart';
import 'package:gosafe_driver/widgets/ExpandedButton.dart';
import 'package:gosafe_driver/widgets/customOutlinedButton.dart';
import 'package:gosafe_driver/widgets/titleCard.dart';
import 'package:gosafe_driver/widgets/widget_registro.dart';

class ConfirmarIDPage extends StatefulWidget {
  static String id = 'confirmar_id_page';
  ConfirmarIDPage({Key key}) : super(key: key);

  @override
  _ConfirmarIDPageState createState() => _ConfirmarIDPageState();
}

class _ConfirmarIDPageState extends State<ConfirmarIDPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff7DAE0F),
      body: Column(
        children: [
          HeaderRegistro(),
          TitleCard(text: 'Confirmacion de ID'),
          CenteredCard(
            children: [
              SizedBox(height: 15.0,),
              Image(
                image: AssetImage('assets/images/mi_foto_example.png'),
                height: 200,
                width: 350,
              ),
              SizedBox(height: 15.0,),
              addButton(),
              informationText(),
             
            ],
          ),
            ExpandedButton(child: Text('Finalizar'))
        ],
      ),
    ));
  }

  Widget informationText() {
    return (Container(
      padding: EdgeInsets.all(20.0),
      child: Text(
          'Necesitamos que te tomes una foto de usted sosteniendo la licencia de conducir. La foto debe mostrar tu rostro y la licencia de conducir. Debe ser tomada en un ambiente con buena luz y buena calidad. No se permite fotos con gafas de sol'),
    ));
  }

  Widget addButton() {
    return (CustomOutlinedButton(
      child: Text(
        'Añadir',
        style: TextStyle(color: Colors.lightGreen[800]),
      ),
      onPressed: () {},
    ));
  }
}
