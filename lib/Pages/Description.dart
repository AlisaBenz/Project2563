
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifightcovid19/Screens/Screening/screening_screen.dart';
 
class DescriptionPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("คัดกรอง COVID-19"),
      ),
      body: Center(
           child: new Card(
         child: Column(children: [
           SizedBox(height: 10.0),
           Text('แบบคัดกรองโควิด 19 (COVID-19)',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

             SizedBox(height: 20.0),
               Text('คำอธิบายแบบคัดกรองท่านสามารถทำแบบคัดกรองผู้ป่วย COVID-19 คัดกรองผ่าน Ifightcovid19 App หากท่านไม่มีความประสงค์จะเข้ารับการคัดกรอง กรุณาปิดแล้วออกจากหน้านี้',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
               SizedBox(height: 20.0),
             Text('กรุณาเลือกเพียงหนึ่งคำตอบจากตัวเลือกที่ปรากฏ',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),

             
              SizedBox(height: 10.0),
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
                );  //แอดไปยังหน้า ประเมินผู้ป่วย
                   //Do Something
                 },
               ),
           ]),
         ]),
      ),
      
    ));
  }
}
 
 