import 'package:flutter/material.dart';
import 'package:gosafe_driver/widgets/CenteredCard.dart';

class TitleCard extends StatelessWidget {
  final String text;
  const TitleCard({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredCard(children: [
      Text(
        this.text,
        style: TextStyle(
            color: Colors.lightGreen[600],
            fontWeight: FontWeight.bold,
            fontSize: 17.0),
      )
    ]);
  }
}
