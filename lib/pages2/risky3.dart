import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
class Risky3Pages2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
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