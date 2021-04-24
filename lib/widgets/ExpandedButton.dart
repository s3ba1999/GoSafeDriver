import 'package:flutter/material.dart';
class ExpandedButton extends StatelessWidget {
  final Widget child;
  const ExpandedButton({Key key,this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            onPressed: () {},
            child: SizedBox(child: Center(child:this.child,),width: 300,),
            style: ButtonStyle(
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.teal[900])),
          );
  }
}