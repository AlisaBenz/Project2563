import 'package:flutter/material.dart';
import 'package:ifightcovid19/Screens/Screening_3/screening_screen.dart';

// import 'package:ifightcovid19/Screens/Login/components/background.dart';
// import 'package:ifightcovid19/Screens/Screening/screening_screen.dart';
// import 'package:ifightcovid19/Screens/Signup/signup_screen.dart';
// import 'package:ifightcovid19/components/already_have_an_account_acheck.dart';

// import 'package:ifightcovid19/components/rounded_input_field.dart';
// import 'package:ifightcovid19/components/rounded_password_field.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:ifightcovid19/components/already_have_an_account_acheck.dart';

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
          backgroundColor: Colors.white,
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
              //อยากขยับไปฝั่งซ้ายจัง ค่อยคิด
              padding: EdgeInsets.only(bottom: 20.0),
              child: new Card(
                  color: Colors.green[200],
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0),
                child: SafeArea(
                  child: new Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // new Divider(
                      //   height: 5.0,
                      //   color: Colors.black,
                      // ),
                      new Padding(
                        padding: new EdgeInsets.all(4.0),
                      ),

                      // -------------------------------------------------------------------------------------------------------------------------------------------------
                      new Text(
                        'ข้อที่ 5 : มีประวัติไปสถานที่ชุมนุมชน หรือสถานที่ที่มีการรวมกลุ่มคน เช่น ตลาดนัด ห้างสรรพสินค้า สถานพยาบาลหรือขนส่งสาธารณะ',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),

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

                      new Padding(
                        padding: new EdgeInsets.all(4.0),
                      ),
                      new Text(
                        'ข้อที่ 6 : ผู้ป่วยประกอบอาชีพที่สัมผัสใกล้ชิดกับนักท่องเที่ยวต่างชาติ สถานที่แออัด หรือติดต่อคนจำนวนมาก',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Row(
                            children: [
                              new Radio<int>(
                                value: 1,
                                groupValue: _radioValue2,
                                onChanged: _handleRadioValue2,
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
                            groupValue: _radioValue2,
                            onChanged: _handleRadioValue2,
                          ),
                          new Text(
                            'ไม่มี',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                      Spacer(),
                      RoundedButton(
                        text: "ถัดไป",
                        // color: kPrimaryLightColor,
                        // textColor: Colors.black,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ScreeningScreenTree();
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