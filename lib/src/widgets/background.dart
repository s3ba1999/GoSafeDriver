import 'package:flutter/material.dart';

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, size.height * 4 / 5)
      ..lineTo(size.width, size.height / 4)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Background extends StatelessWidget {
  final Alignment alignment;
  final List<Widget> children;

  Background({
    Key key,
    this.alignment,
    @required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    children.insert(0, ClipPath(
      clipper: BackgroundClipper(),
      child: Container(
        color: Color(0xff80AF08),
        width: double.maxFinite,
        height: double.maxFinite,
      ),
    ));

    return Stack(
      children: this.children,
      alignment: this.alignment,
    );
  }
}
