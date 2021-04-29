import 'package:flutter/material.dart';
import 'package:gosafe_driver/pages/confirmar_id_page.dart';
import 'package:gosafe_driver/pages/intro_page.dart';
import 'package:gosafe_driver/pages/datosC1_page.dart';
import 'package:gosafe_driver/pages/licencia_page.dart';
import 'package:gosafe_driver/pages/tarjeta_id_page.dart';
import 'package:gosafe_driver/widgets/widget_registro.dart';
import 'package:geolocator/geolocator.dart';
class RegistroPage extends StatefulWidget {
  static String id = 'registro_page';
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  @override
  Widget build(BuildContext context) {

     _determinePosition();
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


  /// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;
  
  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the 
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale 
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }
  
  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately. 
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  } 

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}
}
