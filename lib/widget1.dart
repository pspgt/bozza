import 'package:flutter/material.dart';

class Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            'widget 1',
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
        )
      ],
    );
  }
}
//pagina 1
