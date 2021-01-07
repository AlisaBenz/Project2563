
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ifightcovid19/Screens/Screening/screening_screen.dart';
 
// ignore: must_be_immutable
class DescriptionPages extends StatelessWidget {
  // double currentOpacity = 0;
  // bool checkbox = true;
   bool checked = true;
  //  bool _rememberMeFlag = false;
  // bool checkbox2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("คัดกรอง COVID-19"),
      ),

       body: new SingleChildScrollView(
                    padding: new EdgeInsets.only(bottom: 20.0),
                    
                    child: new Center(
                      
                      child: new Form(
                        //key: _formKey,
                        child: new Center(
                          
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                                 SizedBox(height: 20.0),
                                Text('แบบคัดกรองโควิด 19 (COVID-19)',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

                            //   Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // children: <Widget>[
                            // Image(image: AssetImage('assets/icons/n&d.png'),  width: 250,),
                            
                            // ],
                            //  ),
                    
                  new Card(
                    color: Colors.green[300],
                    margin: new EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 8.0, bottom: 5.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 4.0,
                    child: new Padding(
                      padding: new EdgeInsets.all(25.0),
                      child: new Column(
                        children: <Widget>[
                            Text('คำอธิบายแบบคัดกรอง',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),

                   Text('ท่านสามารถทำแบบคัดกรองผู้ป่วย COVID-19 คัดกรองผ่าน Ifightcovid19 App หากท่านไม่มีความประสงค์จะเข้ารับการคัดกรอง กรุณาปิดแล้วออกจากหน้านี้',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
    SizedBox(height: 20.0),
      Text('กรุณาเลือกเพียงหนึ่งคำตอบจากตัวเลือกที่ปรากฏ',style: TextStyle(fontSize: 19.0,fontWeight: FontWeight.bold),),
       Row(children: [
          HStack([
                    Checkbox(
                      value: checked, onChanged: (bool value) { checked=value ;},
                    ),
                    "".text.make().py16()
                  ]),
	//  SizedBox(
	//    width: 10,
	//    child: Checkbox(
	//  	value: checkbox,
	//  	activeColor: Colors.orange,
	//  	onChanged: (value) {
	//  	  //value may be true or false
	//  	  setState(() {
  //            checkbox = !checkbox;
  //            });
  //          },
  //          ),
  //        ),
         SizedBox(width: 10.0),
         ]),
         
         Text('ข้าพเจ้ารับทราบคำอธิบายแบบคัดกรองและต้องการเข้ารับการคัดกรองCOVID-19',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ),
                  ),
                  //             HStack([
                  //   Checkbox(
                  //     value: checked, onChanged: (bool value) { checked=value ;},
                  //   ),
                  //   "Agree & Continue".text.make().py16()
                  // ]),


              
              SizedBox(height: 20.0),
                   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      MaterialButton(
                       color: Colors.indigo,
                       child: Text('ยอมรับ', style: TextStyle(color: Colors.white)),
                       onPressed: () { 
                         Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ScreeningScreen();
                          },
                        ),
                      ); //แอดไปยังหน้า ประเมินผู้ป่วย
                        //Do Something
                       },
                     ),
                 ]),
            //        Container(
            //   margin: EdgeInsets.all(20),
            //   child: FlatButton(
            //     child: Text('ทำแบบประเมินตนเองอีกครั้ง',style: TextStyle(fontWeight: FontWeight.bold,
            //     fontSize: 20.5),),
            //     onPressed: () {
              
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return ScreeningScreen();
            //         },
            //       ),
            //     );
            //   },
            //   ),
            // ), 
                ],
                
              ),
              
            ),
          ),
          
        ),
      ),
  //     body: Center(
  //          child: new Card(
  //            color: Colors.grey[300],
  //             shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(15.0),
  //         ),
  //         elevation: 5,
  //        child: Column(children: [
  //          SizedBox(height: 10.0),
  //          Text('แบบคัดกรองโควิด 19 (COVID-19)',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

  //            SizedBox(height: 20.0),
  //              Text('คำอธิบายแบบคัดกรองท่านสามารถทำแบบคัดกรองผู้ป่วย COVID-19 คัดกรองผ่าน Ifightcovid19 App หากท่านไม่มีความประสงค์จะเข้ารับการคัดกรอง กรุณาปิดแล้วออกจากหน้านี้',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
  //              SizedBox(height: 20.0),
  //            Text('กรุณาเลือกเพียงหนึ่งคำตอบจากตัวเลือกที่ปรากฏ',style: TextStyle(fontSize: 19.0,fontWeight: FontWeight.bold),),
  //             SizedBox(height: 10.0),
              
  //              Row(children: [
	// SizedBox(
	//   width: 10,
	//   child: Checkbox(
	// 	value: checkbox,
	// 	activeColor: Colors.orange,
	// 	onChanged: (value) {
	// 	  //value may be true or false
	// 	  setState(() {
  //           checkbox = !checkbox;
  //           });
  //         },
  //         ),
  //       ),

  //       ]),
  //         Text('ข้าพเจ้ารับทราบคำอธิบายแบบคัดกรองและต้องการเข้ารับการคัดกรองCOVID-19',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
  //                   SizedBox(height: 20.0),
  //                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
  //                     MaterialButton(
  //                      color: Colors.indigo,
  //                      child: Text('ยอมรับ', style: TextStyle(color: Colors.white)),
  //                      onPressed: () { 
  //                        Navigator.push(
  //                       context,
  //                       MaterialPageRoute(
  //                         builder: (context) {
  //                           return ScreeningScreen();
  //                         },
  //                       ),
  //                     );  //แอดไปยังหน้า ประเมินผู้ป่วย
  //                        //Do Something
  //                      },
  //                    ),
  //                ]),
  //              ]),
  //           ),
            
  //         )
  );
        }
      
        void setState(Null Function() param0) {}
}
 
 