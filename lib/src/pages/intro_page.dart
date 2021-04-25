import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:gosafe_driver/src/env.dart';
import 'package:gosafe_driver/src/widgets/background.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            decoration: BoxDecoration(
              color: Get.theme.cardColor,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: .3, color: Colors.grey),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Image.asset(
                    'assets/images/logo_gosafe.png',
                    height: 250,
                    width: 330,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 35),
                  child: Text(
                    '¿Tienes un auto?\n'
                    'Gana dinero con nosotros.\n'
                    'Consigue clientes de manera más efectiva aquí en Go Safe',
                    textAlign: TextAlign.center,
                    style: Get.textTheme.headline3,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: MaterialButton(
                    color: Get.theme.buttonColor,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Text('Empezar', style: Get.textTheme.button),
                    onPressed: () => Get.toNamed(Routes.register.toString()),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
