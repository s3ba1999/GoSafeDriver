import 'package:flutter/material.dart';
import 'package:gosafe_driver/src/pages/registro_page.dart';

class IntroPage extends StatefulWidget {
  static String id = 'intro_page';
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 70, bottom: 70, left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xffF3F3F3),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 15),
                child: Image(
                  image: AssetImage('assets/images/logo_gosafe.png'),
                  height: 200,
                  width: 350,
                ),
              ),
              // const SizedBox(height: 20),
              Container(
                width: 250,
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20, bottom: 15),
                child: Text(
                  '¿Tienes un auto?\n'
                  'Gana dinero con nosotros.\n'
                  'Consigue clientes de manera más efectiva aquí en Go Safe',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              // const SizedBox(height: 20),
              // RaisedButton(
              //   color: Color(0xff7DAE0F),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(18.0),
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, RegistroPage.id);
              //   },
              //   textColor: Colors.white,
              //   padding: EdgeInsets.all(0.0),
              //   child: Container(
              //     width: 200,
              //     padding: EdgeInsets.all(10.0),
              //     child: Text(
              //       'Empezar',
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         fontSize: 20,
              //         fontWeight: FontWeight.w400,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
