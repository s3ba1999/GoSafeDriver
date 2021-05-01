import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:gosafe_driver/src/widgets/map.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

class SolicitudView extends StatelessWidget {
  SolicitudView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirebaseAnimatedList(
      query: FirebaseDatabase.instance.reference().child('clients'),
      itemBuilder: (_, snap, anim, index) {
        return ListTile(
          tileColor: Colors.grey[200],
          contentPadding: EdgeInsets.all(15),
          leading: Icon(Icons.account_circle, size: 45),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pablo Tardío', style: Get.textTheme.caption),
              Text(
                'Centro Santa Cruz',
                style: TextStyle(color: Colors.black54),
                strutStyle: StrutStyle.fromTextStyle(Get.textTheme.subtitle1),
              ),
            ],
          ),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3),
                child: Text(
                  'Plaza 24 de Septiembre',
                  style: Get.textTheme.subtitle1,
                ),
              ),
              Text('BOB15', style: Get.textTheme.subtitle2),
            ],
          ),
          onTap: () async {
            await showCupertinoModalBottomSheet(
              context: context,
              builder: (context) => Material(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Container(
                      width: double.maxFinite,
                      alignment: Alignment.center,
                      color: Get.theme.primaryColor,
                      padding: EdgeInsets.symmetric(vertical: 3),
                      child: Text('Ver Solicitud', style: Get.textTheme.button),
                    ),
                    SizedBox(
                      height: Get.height / 2.2,
                      width: double.maxFinite,
                      child: MapView(),
                    ),
                    ListTile(
                      tileColor: Colors.grey[200],
                      leading: Icon(Icons.account_circle, size: 45),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pablo Tardío', style: Get.textTheme.caption),
                          Text(
                            'Centro Santa Cruz',
                            style: TextStyle(color: Colors.black54),
                            strutStyle: StrutStyle.fromTextStyle(
                              Get.textTheme.subtitle1,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              'Plaza 24 de Septiembre',
                              style: Get.textTheme.subtitle1,
                            ),
                          ),
                          Text('BOB15', style: Get.textTheme.subtitle2),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Get.theme.primaryColor,
                        child: Text(
                          'Aceptar 15Bs',
                          style: Get.textTheme.button,
                        ),
                        onPressed: () => print('ACEPTAR'),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Ofrezca su tarifa',
                        // style: TextStyle(color: Colors.black54),
                        strutStyle: StrutStyle.fromTextStyle(
                          Get.textTheme.headline3,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          iconSize: 30,
                          icon: Icon(Icons.remove),
                          onPressed: () => print('less'),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('15Bs', style: Get.textTheme.headline3),
                        ),
                        IconButton(
                          iconSize: 30,
                          icon: Icon(Icons.add),
                          onPressed: () => print('less'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
