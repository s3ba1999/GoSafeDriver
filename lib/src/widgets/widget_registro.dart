import 'package:get/get.dart';
import 'package:flutter/material.dart';

Widget headerRegistro() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Expanded(
        child: Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Registro de Conductores',
            textAlign: TextAlign.left,
            style: Get.textTheme.headline1,
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
          child: Image.asset('assets/images/auto2.png'),
        ),
      ),
    ],
  );
}
