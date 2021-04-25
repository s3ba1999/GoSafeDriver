import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:international_phone_input/international_phone_input.dart';

class EnterPhonePage extends StatefulWidget {
  EnterPhonePage({Key key}) : super(key: key);

  @override
  _EnterPhonePageState createState() => _EnterPhonePageState();
}

class _EnterPhonePageState extends State<EnterPhonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: enterPhone()),
      bottomNavigationBar: confirmButton(),
    );
  }

  Widget enterPhone() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 75, left: 25),
          child: Text('Ingresa Tu Número', style: Get.textTheme.overline),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Text(
            'Enviaremos un Código de confirmación',
            style: Get.textTheme.bodyText1,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: InternationalPhoneInput(
            initialSelection: '+591',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }

  Widget confirmButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width / 7, vertical: 80),
      child: MaterialButton(
        color: Get.theme.buttonColor,
        padding: EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text('CONTINUAR', style: TextStyle(color: Colors.white)),
        onPressed: () => null,
      ),
    );
  }
}
