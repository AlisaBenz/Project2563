import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ifightcovid19/Pages/Description.dart';
// import 'package:ifightcovid19/Pages/chatbot.dart';

class HealthformPages extends StatefulWidget {
  HealthformPages({Key key}) : super(key: key);

  @override
  HealthformPagesState createState() => new HealthformPagesState();
}

class HealthformPagesState extends State<HealthformPages> with TickerProviderStateMixin {
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
              
              // child: new Card(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0),
                child: SafeArea(
                  child: new Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       new Text(
                        ' แบบบันทึกสุขภาพก่อนรับการคัดกรอง',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      //  -------------------------------------------------------------------------------------------------------------------------------------------------
                     
                      new Text(
                        'มีโรคประจำตัวหรือไม่ ',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
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
                            ' ไม่มี',  
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                     
                     
                      new Padding(
                        padding: new EdgeInsets.all(4.0),
                      ),

                      new Text(
                        'ประวัติการเจ็บป่วยในปัจจุบัน',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
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
                                'โรคเบาหวาน',
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
                            'โรคความดันโลหิตสูง',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                       new Row(
                        children: [
                          new Radio<int>(
                            value: 2,
                            groupValue: _radioValue2,
                            onChanged: _handleRadioValue2,
                          ),
                          new Text(
                            ' โรคไขมันในเลือดสูง',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                       new Row(
                        children: [
                          new Radio<int>(
                            value: 3,
                            groupValue: _radioValue2,
                            onChanged: _handleRadioValue2,
                          ),
                          new Text(
                            'โรคอ้วน',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                       new Row(
                        children: [
                          new Radio<int>(
                            value: 4,
                            groupValue: _radioValue2,
                            onChanged: _handleRadioValue2,
                          ),
                          new Text(
                            'โรคมะเร็ง',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                      Positioned(
               bottom: 40,
               left: MediaQuery.of(context).size.width * .05,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     alignment: Alignment.center,
                     width: MediaQuery.of(context).size.width * .9,
                     child: Row(
                       children: [
                       Container(
                           child: Row(children: [

                          ]),
                        ),
                        // Spacer(),
                          InkWell(
                             onTap: () {

                           Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => DescriptionPages(
                                         )));
                           },
                            
                            
                             child: Container(
                               height: Platform.isIOS ? 70 : 60,
                               alignment: Alignment.center,
                               child: Text(
                                 'บันทึก',
                                 style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w600, fontSize: 20),
                               ),
                             ),
                           ),
                            //  SizedBox(height: 10.0),
                              Spacer(),
                          InkWell(
                            onTap: () {

                           Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => DescriptionPages(
                                         )));
                           },
                            // onTap: () => print('Get Started Now'),
                            child: Container(
                              height: Platform.isIOS ? 70 : 60,
                              alignment: Alignment.center,
                              child: Text(
                                'ข้าม',
                                style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            )
                      
                      
                    ],
                    
                    
                  ),
                ),
              )),
        ));
  }



  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

