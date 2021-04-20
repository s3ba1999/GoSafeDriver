import 'package:flutter/material.dart';
import 'package:gosafe_driver/pages/registro_page.dart';

class IntroPage extends StatefulWidget {
  static String id = 'intro_page';
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: CustomPaint(
                  painter: MiPainter(),
                ),
              ),
              SafeArea(
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 70, bottom: 70,left: 20,right: 20),
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
                        const SizedBox(height: 20),
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
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(height: 20),
                        RaisedButton(
                          color: Color(0xff7DAE0F),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, RegistroPage.id);
                          },
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            width: 200,
                            padding: const EdgeInsets.all(10.0),
                            child: const Text('Empezar',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MiPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();

    //Propiedades
    lapiz.color = Color(0xff7DAE0F);
    lapiz.style = PaintingStyle.fill; //.fill .stoke
    lapiz.strokeWidth = 20;

    final path = new Path();

    //Dibujar con el path y el lapiz

    //VERSION ARRIBA
    /*
    path.lineTo(0, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.35,
        size.width * 0.5, size.height * 0.3);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.25, size.width, size.height * 0.3);

    path.lineTo(size.width, 0);
*/
    //VERSION ABAJO
    path.moveTo(0, size.height * 0.9);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.8,
        size.width * 0.5, size.height * 0.6);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.6, size.width, size.height * 0.2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
