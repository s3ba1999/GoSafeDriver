import 'package:flutter/material.dart';
import 'package:gosafe_driver/pages/confirmar_id_page.dart';
import 'package:gosafe_driver/pages/intro_page.dart';
import 'package:gosafe_driver/pages/datosC1_page.dart';
import 'package:gosafe_driver/pages/licencia_page.dart';
import 'package:gosafe_driver/pages/tarjeta_id_page.dart';
import 'package:gosafe_driver/widgets/widget_registro.dart';

class RegistroPage extends StatefulWidget {
  static String id = 'registro_page';
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff7DAE0F),
        body: Column(
          children: [
            HeaderRegistro(),
            Expanded(
              child: Container(
                margin:
                    EdgeInsets.only(top: 0, bottom: 20, right: 20, left: 20),
                width: 1000,
                height: 1000,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xfffcfcfb),
                ),
                child: ListView(
                  children: <Widget>[
                    const SizedBox(height: 20),
                    Text(
                      'Verificación',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff7DAE0F),
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    TarjetaR(route : Datos1Page.id,nombre : 'Datos del conductor'),
                    TarjetaR(route : LicenciaPage.id,nombre : 'Licencia de Conducir'),
                    TarjetaR(route : TargetaIDPage.id,nombre : 'Tarjeta de identificación'),
                    TarjetaR(route : ConfirmarIDPage.id,nombre : 'Confirmación de ID'),
                    TarjetaR(route : IntroPage.id,nombre : 'Información acerca del vehículo'),
                    TarjetaR(route : IntroPage.id,nombre : 'SOAT'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
