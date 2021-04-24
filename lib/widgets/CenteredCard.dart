import 'package:flutter/material.dart';
class CenteredCard extends StatelessWidget {
  final List<Widget> children;
  const CenteredCard({ this.children}) ;

  @override
  Widget build(BuildContext context) {
    return Card(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                    width: 300.0,
                    child: Center(
                      child: Column(children: children),
                    ))),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          );
  }
}