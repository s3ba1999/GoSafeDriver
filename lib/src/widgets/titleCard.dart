import 'package:flutter/material.dart';
import 'package:gosafe_driver/src/widgets/centeredCard.dart';

class TitleCard extends StatelessWidget {
  final String text;
  const TitleCard({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredCard(
      children: [
        Text(
          this.text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.lightGreen[600],
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
