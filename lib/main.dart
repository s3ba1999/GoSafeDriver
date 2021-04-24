import 'package:flutter/material.dart';
import 'package:gosafe_driver/pages/intro_page.dart';
import 'package:gosafe_driver/pages/licencia_page.dart';
import 'package:gosafe_driver/pages/registro_page.dart';
import 'package:gosafe_driver/pages/datosC1_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoSafe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: RegistroPage.id,
      routes: {
        IntroPage.id: (context) => IntroPage(),
        RegistroPage.id: (context) => RegistroPage(),
        Datos1Page.id: (context) => Datos1Page(),
        LicenciaPage.id: (context) => LicenciaPage(),
      },
    );
  }
}
