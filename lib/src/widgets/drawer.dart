import 'package:get/get.dart';
import 'package:flutter/material.dart';

const listTiles = [
  ['Ciudad', Icons.add_location_outlined],
  ['Seguridad', Icons.security_outlined],
  ['Mis viajes', Icons.access_time_outlined],
  ['Soporte', Icons.chat_outlined],
  ['Acerca de', Icons.info_outline],
  ['Métodos de Pago', Icons.credit_card_outlined],
];

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  List get _buildList {
    final list = <Widget>[
      DrawerHeader(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: Get.width / 4,
              height: Get.width / 4,
              decoration: BoxDecoration(
                color: Color(0xff80AF08),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Username', style: Get.textTheme.headline3),
                InkWell(
                  child: Text('Ver'),
                  onTap: () => print('User Profile'),
                ),
              ],
            )
          ],
        ),
      ),
    ];

    list.addAll(
      listTiles.map(
        (tile) => ListTile(
          title: Text(tile.first, style: Get.textTheme.bodyText2),
          leading: Icon(tile.last, color: Colors.grey),
          onTap: () => print(tile.first),
        ),
      ),
    );

    list.add(
      Padding(
        padding: EdgeInsets.only(top: Get.height / 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.directions_walk, size: 43),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xff80AF08),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                ),
                child: Text('Modo Pasajero', style: Get.textTheme.headline2),
              ),
            ),
          ],
        ),
      ),
    );

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 2 / 3,
      child: Drawer(
        elevation: 0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: _buildList,
        ),
      ),
    );
  }
}
