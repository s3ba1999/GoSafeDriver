import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  const CustomOutlinedButton({
    Key key,
    this.child,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: this.onPressed,
      child: SizedBox(
        child: Center(
          child: this.child,
        ),
        width: 100.0,
      ),
      style: ButtonStyle(
        side: MaterialStateProperty.all<BorderSide>(
            BorderSide(width: 1.5, color: Colors.lightGreen[600])),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        // backgroundColor: MaterialStateProperty.all<Color>(Colors.white)
      ),
    );
  }
}
