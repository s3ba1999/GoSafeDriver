import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:gosafe_driver/src/widgets/widget_registro.dart';

class DatosPage extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  DatosPage({Key key}) : super(key: key);

  Widget title() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Verificación',
        textAlign: TextAlign.center,
        style: Get.textTheme.headline2,
      ),
    );
  }

  Widget inputImage() {
    return InkWell(
      onTap: () => print('PICK IMAGE'),
      child: Container(
        height: 180,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 95, right: 95, bottom: 20),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(150),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.camera_alt_outlined, size: 35, color: Colors.white),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text('Sube tu foto', style: Get.textTheme.headline5),
            ),
          ],
        ),
      ),
    );
  }

  Widget inputField({
    String hintText,
    IconData iconData,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          border: UnderlineInputBorder(),
          hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
          prefixIcon: Icon(iconData, color: Colors.grey, size: 30),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          headerRegistro(),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  title(),
                  inputImage(),
                  inputField(
                    hintText: 'Nombres',
                    iconData: Icons.person_outline,
                  ),
                  inputField(
                    hintText: 'Apellidos',
                    iconData: Icons.person_outline,
                  ),
                  inputField(
                    hintText: 'Carnet de Identidad',
                    iconData: Icons.contact_mail,
                  ),
                  inputField(
                    hintText: 'Contraseña',
                    iconData: Icons.lock_outline,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
                    child: MaterialButton(
                      color: Get.theme.buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text('Continuar', style: Get.textTheme.button),
                      onPressed: () => print('CONTINUAR'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
