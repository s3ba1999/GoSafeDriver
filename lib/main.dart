import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:gosafe_driver/src/env.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await GetStorage.init();
  // await Firebase.initializeApp();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: pages,
      initialRoute: Routes.home.toString(),
      
      theme: ThemeData(
        brightness: Brightness.light,
        canvasColor: Colors.grey[100],

        primaryColor: Color(0xff80AF08),
        primaryColorDark: Color(0xff222222),
        
        cardColor: Color(0xffF3F3F3),
        buttonColor: Color(0xff80AF08),
        accentColor: Color(0xffD1D5DB),
        
        backgroundColor: Color(0xfffcfcfb),
        scaffoldBackgroundColor: Color(0xff80AF08),
        iconTheme: IconThemeData(color: Color(0xff7DAE0F), size: 30),
        
        textTheme: TextTheme(
          button: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),

          overline: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.grey),

          headline1: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
          headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff80AF08)),
          headline3: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
          
          headline4: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey),
          headline5: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
          headline6: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),
        ),
      ),
    );
  }
}