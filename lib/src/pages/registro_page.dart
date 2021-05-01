import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:gosafe_driver/src/env.dart';
import 'package:gosafe_driver/src/widgets/widget_registro.dart';

final items = [
  [Routes.intro.toString(), 'Datos del Conductor'],
  [Routes.intro.toString(), 'Licencia de Conducir'],
  [Routes.intro.toString(), 'Tarjeta de Identificación'],
  [Routes.intro.toString(), 'Confirmación de ID'],
  [Routes.intro.toString(), 'Información acerca del vehículo'],
  [Routes.intro.toString(), 'SOAT'],
];

class RegistroPage extends StatelessWidget {
  List<Widget> buildList() {
    final list = <Widget>[
      Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'Verificación',
          textAlign: TextAlign.center,
          style: Get.textTheme.headline2,
        ),
      ),
    ];

    int top = 0;
    list.addAll(items.map((item) {
      top++;
      return Column(
        children: [
          top < 2 ? Divider(height: 3) : Container(),
          ListTile(
            title: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(item.last),
            ),
            trailing: Icon(Icons.navigate_next),
            onTap: () => Get.toNamed(item.first),
          ),
          Divider(height: 3),
        ],
      );
    }));

    list.add(Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 50),
      child: MaterialButton(
        color: Get.theme.buttonColor,
        child: Text('Terminado', style: Get.textTheme.button),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: () => print('Terminado'),
      ),
    ));

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                children: buildList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
