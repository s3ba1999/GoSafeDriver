// import 'package:flutter/material.dart';
// import 'package:gosafe_driver/pages/intro_page.dart';

// class TarjetaR extends StatelessWidget {
//   final String route;
//   final String nombre;
//   TarjetaR({this.route, this.nombre});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         onTap: () {
//           Navigator.pushNamed(context, this.route);
//         },
//         title: Text(this.nombre),
//         trailing: Icon(
//           Icons.navigate_next,
//           color: Color(0xff7DAE0F),
//         ),
//       ),
//     );
//   }
// }

// Row HeaderRegistro() {
//   return Row(
//     children: [
//       Expanded(
//         child: Container(
//           width: 250,
//           alignment: Alignment.center,
//           child: Text(
//             'Registro de Conductores',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//                 color: Colors.white, fontSize: 24, fontWeight: FontWeight.w400),
//           ),
//         ),
//       ),
//       Expanded(
//         child: Container(
//           child: Image(
//             image: AssetImage('assets/images/auto2.png'),
//             height: 200,
//             width: 350,
//           ),
//         ),
//       ),
//     ],
//   );
// }

// Container LlenadoTxt(BuildContext context,IconData icono, String titulo) {
//   return Container(
//     margin: EdgeInsets.only(top: 0, bottom: 0, right: 20, left: 20),
//     child: TextFormField(
//       cursorColor: Theme.of(context).cursorColor,
//       decoration: InputDecoration(
//         icon: Icon(icono,color: Color(0xff7DAE0F),),
//         labelText: titulo,
//         labelStyle: TextStyle(color: Colors.black,),
//         suffixIcon: Icon(Icons.check_circle,),
//         enabledBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: Color(0xff7DAE0F)),
//         ),
//       ),
//     ),
//   );
// }
