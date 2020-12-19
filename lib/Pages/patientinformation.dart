// import 'package:flutter/material.dart';

// class PatientinformationPage extends StatefulWidget {
//   @override
//   PatientinformationPageState createState() {
//     return new PatientinformationPageState();
//   }
// }

// class PatientinformationPageState extends State<PatientinformationPage> with TickerProviderStateMixin {
//   double currentOpacity = 0;
//   Animation<double> starAnimation;

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: new Scaffold(
//         backgroundColor: Color(0xFFFFFFFF),
//         appBar: AppBar(
//           title: Text("ข้อมูลผู้ป่วย"),
//             actions: [
//         // action button
//         IconButton(
//           icon: Image.asset('assets/icons/heart.png'),
//           onPressed: () { },
//         ),
//       ],
//           backgroundColor: Colors.indigo,
//         ),
//         body: new Center(
//           child: Container(
//           padding: EdgeInsets.all(10.0),
//           child: Column(children: [
//             Text('รายชื่อประวัติข้อมูลผู้ป่วยที่มารับการตรวจคัดกรองโรค',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
//                   ]),
//       ),
//     )));
//   }
// }
import 'package:flutter/material.dart';


import 'package:ifightcovid19/pages2/risky.dart';
import 'package:ifightcovid19/pages2/risky1.dart';
import 'package:ifightcovid19/pages2/risky2.dart';
import 'package:ifightcovid19/pages2/risky3.dart';
 
// main() {
//   runApp(
//       MaterialApp(
//     home: MyApp(),
 
//   ));
// }
 
class PatientinformationPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
    debugShowCheckedModeBanner: false,
     home: new Scaffold(
   
      appBar: AppBar(
        title: Text("DashBoard"),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: new MaterialButton(
                    height: 100.0,
                    minWidth: 150.0,
                    color: Theme.of(context).primaryColor, 
                    textColor: Colors.white,
                    child: new Text("ปกติ"),
                    onPressed: () => {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RiskyPages2()),
                    )
                    },
                    splashColor: Colors.redAccent,
                  )),
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: new MaterialButton(
                    height: 100.0,
                    minWidth: 150.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: new Text("ปานกลาง"),
                    onPressed: () => {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Risky1Pages2()),
                    )
                    },
                    splashColor: Colors.redAccent,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: new MaterialButton(
                    height: 100.0,
                    minWidth: 150.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: new Text("เสี่ยง"),
                    onPressed: () => {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Risky2Pages2()),
                    )
                    },
                    splashColor: Colors.redAccent,
                  )),
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: new MaterialButton(
                    height: 100.0,
                    minWidth: 150.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: new Text("เสี่ยงมาก"),
                    onPressed: () => {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Risky3Pages2 ()),
                    )
                    },
                    splashColor: Colors.redAccent,
                  )),
            ],
          ),
 
        ],
      )),
    ));
  }
}
 