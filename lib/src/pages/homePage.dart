import 'package:flutter/material.dart';

import 'package:gosafe_driver/src/widgets/background.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        alignment: Alignment.center,
        children: [
          Text('HOMEPAGE'),
        ],
      ),
    );
  }
}
