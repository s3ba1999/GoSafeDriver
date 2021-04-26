import 'package:flutter/material.dart';

class CenteredCard extends StatelessWidget {
  final List<Widget> children;
  const CenteredCard({this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: SizedBox(
            child: Column(children: children),
            width: double.infinity,
          ),
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(top: 0, bottom: 10, right: 20, left: 20),
    );
  }
}
