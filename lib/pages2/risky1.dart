import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
class Risky1Pages2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ปานกลาง"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Dashboard'),
        ),
      ),
    );
  }
}