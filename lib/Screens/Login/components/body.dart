import 'package:flutter/material.dart';
// import 'package:ifightcovid19/Screens/Login/components/background.dart';
import 'package:ifightcovid19/Screens/Screening/screening_screen.dart';
// import 'package:ifightcovid19/components/already_have_an_account_acheck.dart';
import 'package:ifightcovid19/components/rounded_button.dart';
// import 'package:ifightcovid19/components/rounded_input_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new MaterialApp(
     debugShowCheckedModeBanner: false,   
       
    home: new Scaffold(
       
         backgroundColor: Color(0xFFFAFAFA),
         appBar: AppBar(
           title: Text(""),
            actions: [
          //action button
         IconButton(
           icon: Image.asset('assets/icons/heart.png'),
           onPressed: () { },
         ),

       ],
         backgroundColor: Colors.indigo,
         ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10.0),
        
        
          // child: new Card(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text('ลงทะเบียนเข้าใช้งาน',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            // Text(
            //   "ลงทะเบียนเข้าใช้งาน",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            //  //ตัวเข้ม style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)
            // ),
          
             SizedBox(height: 10.0),
               TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'ชื่อ-นามสกุล',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 32.0),
                      // borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      // borderRadius: BorderRadius.circular(2.0)
                  )
              ),
              onChanged: (value) {
                //Do something with this value
              },
            ),
             SizedBox(height: 10.0),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'หมายเลขบัตรประชาชน',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(.0)
                  )
              ),
              onChanged: (value) {
                //Do something with this value
              },
            ),
             SizedBox(height: 10.0),
             TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'วัน/เดือน/ปี',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(5.0)
                  )
              ),
              onChanged: (value) {
                //Do something with this value
              },
            ),
             SizedBox(height: 10.0),
                         TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'ที่อยู่',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(5.0)
                  )
              ),
              onChanged: (value) {
                //Do something with this value
              },
            ),
             SizedBox(height: 10.0),
                         TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'เบอร์โทรศัพท์',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(5.0)
                  )
              ),
              onChanged: (value) {
                //Do something with this value
              },
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "ลงทะเบียน",
              // color: kPrimaryLightColor,
              // textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ScreeningScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    )));
  }
}
