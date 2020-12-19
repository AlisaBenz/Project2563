import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
class  Risky2Pages2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เสี่ยง"),
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