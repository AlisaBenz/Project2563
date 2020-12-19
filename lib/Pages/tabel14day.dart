import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ifightcovid19/Screens/Screening/screening_screen.dart';

class Tabel14dayPage extends StatefulWidget {
  Tabel14dayPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Tabel14dayPageState createState() => _Tabel14dayPageState();
}

class _Tabel14dayPageState extends State<Tabel14dayPage> {
 
  @override
  Widget build(BuildContext context) {
       return new MaterialApp(
       debugShowCheckedModeBanner: false,
                home: new Scaffold(
                  backgroundColor: Colors.lightBlue[100],
                  appBar: new AppBar(
                    elevation: 0.0,
                    centerTitle: true,
                    title: new Text('',
                        style: new TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                                actions: [
                      
                     IconButton(
                       icon: Image.asset('assets/icons/heart.png'),
                       onPressed: () { },
                     ),
            
                   ],
                     backgroundColor: Colors.indigo,
                     
                  ),
                  
                  body: new SingleChildScrollView(
                    padding: new EdgeInsets.only(bottom: 20.0),
                    
                    child: new Center(
                    child: Column(children: [
                    SizedBox(height: 10.0),
                    Text('ข้อมูลบันทึกฟอร์ม 14 วัน',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
                  ]),
        ),
      ),
    ),
       );
  }
}
