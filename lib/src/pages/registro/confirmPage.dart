import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:block_input/block_input.dart';
import 'package:block_input/block_input_style.dart';
import 'package:block_input/block_input_controller.dart';
import 'package:block_input/block_input_keyboard_type.dart';

class ConfirmPhonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
          child: Text('Ingresa el Código', style: Get.textTheme.overline),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Text(
            'Se envió un código por SMS',
            style: Get.textTheme.bodyText1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Text('+591 78506823'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: InkWell(
            child: Text(
              'Editar Número de Celular',
              style: Get.textTheme.headline6,
            ),
            onTap: () => print('Back'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: BlockInput(
            controller: BlockInputController(4),
            keyboardType: BlockInputKeyboardType.number,
            axisAlignment: MainAxisAlignment.spaceAround,
            style: BlockInputStyle(
              width: Get.width / 6,
              backgroundColor: Colors.black12,
              textStyle: Get.textTheme.headline3,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Get.theme.primaryColor),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget confirmButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width / 7, vertical: 30),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 10),
        color: Color(0xff709e07),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text('CONTINUAR', style: Get.textTheme.button),
        onPressed: () => null,
      ),
    );
  }
}
