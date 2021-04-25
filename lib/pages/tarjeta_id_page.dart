import 'package:flutter/material.dart';
import 'package:gosafe_driver/widgets/CenteredCard.dart';
import 'package:gosafe_driver/widgets/ExpandedButton.dart';
import 'package:gosafe_driver/widgets/customOutlinedButton.dart';
import 'package:gosafe_driver/widgets/titleCard.dart';
import 'package:gosafe_driver/widgets/widget_registro.dart';

class TargetaIDPage extends StatefulWidget {
  TargetaIDPage({Key key}) : super(key: key);
  static String id = 'tarjeta_id_page';
  @override
  _TargetaIDPageState createState() => _TargetaIDPageState();
}

class _TargetaIDPageState extends State<TargetaIDPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff7DAE0F),
      body: ListView(children: [Column(
        children: [
          HeaderRegistro(),
          TitleCard(text: 'Licencia de conducir'),
       
          licenciaConducir('frente'),

          licenciaConducir('atras'),
         
          ExpandedButton(child: Text('Finalizar'))
        ],
      )],),
    ));
  }

  

  Widget licenciaConducir(String posicion) {
    return (CenteredCard(children: [
      Text('Tarjeta de identificacion ' + '(' + posicion + ')'),
      Image(image: AssetImage('assets/images/id_big.png'),),
       SizedBox(height: 15.0,),
      CustomOutlinedButton(

        child: Text('Añadir',style: TextStyle(color: Colors.lightGreen[800]),),
        onPressed: (){},
      )
    ]));
  }
}
