import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gosafe_driver/pages/intro_page.dart';
import 'package:image_picker/image_picker.dart';
import 'package:gosafe_driver/widgets/widget_registro.dart';

class Datos1Page extends StatefulWidget {
  static String id = 'datos1_page';
  
  @override
  _Datos1PageState createState() => _Datos1PageState();
}

class _Datos1PageState extends State<Datos1Page> {
  @override
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  bool _obscureText = true;

  String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }



  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff7DAE0F),
        body: Column(
          children: [
            HeaderRegistro(), //HEADER DE REGISTRO DE CONDUCTORES
            Expanded(
              child: SingleChildScrollView(
                              child: Container(
                  margin:
                      EdgeInsets.only(top: 0, bottom: 20, right: 20, left: 20),
                  width: 1000,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xfffcfcfb),
                  ),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 20),
                      Text(
                        'Datos del conductor',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff7DAE0F),
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(50)),
                        width: 100,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt,
                              color: Colors.grey[800],
                            ),
                            Text(
                        'Sube tu foto',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                          ],
                        ),
                      ),
                      LlenadoTxt(context, Icons.person_outline, 'Nombres'),
                      LlenadoTxt(context, Icons.person_outline, 'Apellidos'),
                      LlenadoTxt(context, Icons.person_outline, 'Carnet de identidad'),
                      LlenadoTxt(context, Icons.person_outline, 'Contraseña'),
                      
                      Container(
                        margin: EdgeInsets.only(top: 0, bottom: 0, right: 20, left: 20),
                        child: TextFormField(
                              decoration: const InputDecoration(
                                  labelText: 'Contraseña',
                                  suffixIcon: IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.remove_red_eye,),
                                    ),
                                  icon: const Padding(
                                        padding: const EdgeInsets.only(top: 15.0),
                                        child: const Icon(Icons.lock)
                                        )
                                        
                                        ),
                              validator: (val) => val.length < 6 ? 'Password too short.' : null,
                              onSaved: (val) => _password = val,
                              obscureText: _obscureText,
                            ),
                      ),
             FlatButton(
                onPressed: _toggle,
                child: new Text(_obscureText ? "Show" : "Hide")),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
