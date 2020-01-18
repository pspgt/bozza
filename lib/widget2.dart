import 'package:flutter/material.dart';

class Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            'widget 2',
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
        )
      ],
    );
  }
}
// pagina 2
