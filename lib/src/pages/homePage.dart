import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:gosafe_driver/src/widgets/drawer.dart';

import 'package:gosafe_driver/src/pages/home/ingresos.dart';
import 'package:gosafe_driver/src/pages/home/solicitudes.dart';
import 'package:gosafe_driver/src/pages/home/calificacion.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  Widget currentView = SolicitudView();

  final String status = 'Libre';
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: currentView,
      backgroundColor: Get.theme.accentColor,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Container(
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 9),
          decoration: BoxDecoration(
            color: Get.theme.primaryColor,
            borderRadius: BorderRadius.circular(17),
          ),
          child: Text(status, style: Get.textTheme.button),
        ),
        leading: IconButton(
          color: Get.theme.primaryColor,
          icon: Icon(Icons.menu),
          onPressed: () => scaffoldKey.currentState.openDrawer(),
        ),
        actions: [
          IconButton(
            color: Get.theme.primaryColor,
            icon: Icon(Icons.taxi_alert),
            onPressed: () async {
              await Get.defaultDialog<void>(
                title: 'Está en Peligro?',
                titleStyle: Get.textTheme.headline2,
                content: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Por Favor Mantenga presionado  Si!!',
                    style: Get.textTheme.headline6,
                  ),
                ),
                confirm: MaterialButton(
                  child: Text(
                    'Si!!',
                    strutStyle: StrutStyle.fromTextStyle(Get.textTheme.button),
                    style: TextStyle(color: Get.theme.primaryColor),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(width: 1.5, color: Get.theme.primaryColor),
                  ),
                  onPressed: () {
                    // TODO share localization to server
                    print('EMIT LOCATION');
                    Get.close(0);
                  },
                ),
                cancel: MaterialButton(
                  child: Text(
                    'NO',
                    strutStyle: StrutStyle.fromTextStyle(Get.textTheme.button),
                    style: TextStyle(color: Colors.redAccent),
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.5, color: Colors.redAccent),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () => Get.close(0),
                ),
              );
            },
          ),
        ],
      ),
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Solicitudes',
            tooltip: 'Solicitudes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on_sharp),
            label: 'Mis Ingresos',
            tooltip: 'Mis Ingresos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_rate_outlined),
            label: 'Calificaciones',
            tooltip: 'Calificaciones',
          ),
        ],
        onTap: (index) {
          if (index == currentIndex) return;
          if (index == 0) {
            currentView = SolicitudView();
          } else if (index == 1) {
            currentView = IngresoView();
          } else {
            currentView = CalificacionView();
          }
          setState(() => currentIndex = index);
        },
      ),
    );
  }
}
