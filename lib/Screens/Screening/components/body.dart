import 'package:flutter/material.dart';
import 'package:ifightcovid19/Screens/Screening_1/screening_screen.dart';

import 'package:ifightcovid19/components/rounded_button.dart';

class BodyPage extends StatefulWidget {
  BodyPage({Key key}) : super(key: key);

  @override
  BodyPageState createState() => new BodyPageState();
}

class BodyPageState extends State<BodyPage> with TickerProviderStateMixin {
  AnimationController _controller;

  int _radioValue;
  int _radioValue2;

  @override
  initState() {
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    )..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) _controller.reverse();
      });
    super.initState();
  }

  void _handleRadioValue(int value) {
    // Don't animate the first time that the radio value is set
    if (_radioValue != null) _controller.forward();
    setState(() {
      _radioValue = value;
    });
  }

  void _handleRadioValue2(int value) {
    // Don't animate the first time that the radio value is set
    if (_radioValue2 != null) _controller.forward();
    setState(() {
      _radioValue2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          backgroundColor: Colors.lightBlue[100],
          appBar: AppBar(
            title: Text(""),
            actions: [
              // action button
              IconButton(
                icon: Image.asset('assets/icons/heart.png'),
                onPressed: () {},
              ),
            ],
            backgroundColor: Colors.indigo,
          ),
          body: new Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: new Card(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0),
                child: SafeArea(
                  child: new Column(
                    children: [
                      // -------------------------------------------------------------------------------------------------------------------------------------------------
                      new Padding(
                        padding: new EdgeInsets.all(4.0),
                      ),

                      new Row(children: [
                        new Text(
                          'โรคประจำตัว',
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ]),

                      new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Row(
                            children: [
                              new Radio<int>(
                                value: 1,
                                groupValue: _radioValue,
                                onChanged: _handleRadioValue,
                              ),
                              new Text(
                                'มี',
                                style: new TextStyle(fontSize: 16.0),
                              )
                            ],
                          ),
                        ],
                      ),

                      new Row(
                        children: [
                          new Radio<int>(
                            value: 0,
                            groupValue: _radioValue,
                            onChanged: _handleRadioValue,
                          ),
                          new Text(
                            'ไม่มี',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),

                      new Divider(
                        height: 5.0,
                        color: Colors.black,
                      ),
                      new Padding(
                        padding: new EdgeInsets.all(4.0),
                      ),

                      // -------------------------------------------------------------------------------------------------------------------------------------------------

                      new Padding(
                        padding: new EdgeInsets.all(4.0),
                      ),
                      new Text(
                        'ข้อที่ 1 : ผู้ป่วยมีอุณหภูมิกายตั้งแต่ 37.5 องศาขึ้นไป หรือ ให้ประวัติว่ามีไข้ใน',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      new Row(
                        children: <Widget>[
                          new Radio<int>(
                            value: 0,
                            groupValue: _radioValue2,
                            onChanged: _handleRadioValue2,
                          ),
                          new Text(
                            'ต่ำกว่า 37.5',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),

                      new Row(children: [
                        new Radio<int>(
                          value: 1,
                          groupValue: _radioValue2,
                          onChanged: _handleRadioValue2,
                        ),
                        new Text(
                          'มากกว่า 37.7',
                          style: new TextStyle(fontSize: 16.0),
                        ),
                      ]),

                      new Divider(
                        height: 5.0,
                        color: Colors.black,
                      ),
                      new Padding(
                        padding: new EdgeInsets.all(4.0),
                      ),

                      SizedBox(height: 40),
                      RoundedButton(
                        text: "ถัดไป",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ScreeningScreenOne();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ))),
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
