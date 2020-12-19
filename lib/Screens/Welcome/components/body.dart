import 'package:flutter/material.dart';
import 'package:ifightcovid19/Pages/Description.dart';
import 'package:ifightcovid19/Pages/chatbot.dart';
// import 'package:ifightcovid19/Pages/chatbot.dart';
//  import 'package:ifightcovid19/constants.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:ifightcovid19/Screens/Login/login_screen.dart';
import 'package:ifightcovid19/Screens/Signup/signup_screen.dart';
import 'package:ifightcovid19/Screens/Welcome/components/background.dart';
import 'package:ifightcovid19/components/rounded_button.dart';
// import 'package:ifightcovid19/pages2/risky.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text('ยินดีต้อนรับเข้าสู่ ifightcovid19 App',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
            SizedBox(height: size.height * 0.05),
             Text(
               "กรุณาเข้าสู่ระบบ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            // SizedBox(height: size.height * 0.05),
            // SvgPicture.asset(
            //   "assets/icons/doctor.svg",
            //   height: size.height * 0.45,
            // ),
            SizedBox(height: 10.0),
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
                    child: new Text("คัดกรอง COVID-19"),
                    onPressed: () => {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  DescriptionPages()),
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
                    child: new Text("ห้องสนทนา"),
                    onPressed: () => {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatbotPage()),
                    )
                    },
                    splashColor: Colors.redAccent,
                  )),
              SizedBox(height: 10.0),
            // RoundedButton(
            //   text: "บุคคลทั่วไป",
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return LoginScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),
            //  RoundedButton(
            //   text: "สำหรับแพทย์/พยาบาล",
            //   // color: kPrimaryLightColor,
            //   // textColor: Colors.black,
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return SignUpScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),
            //  RoundedButton(
            //    text: "เมนูแชท",
            //     //color: kPrimaryLightColor,
            //     //textColor: Colors.black,
            //    press: () {
            //      Navigator.push(
            //        context,
            //        MaterialPageRoute(
            //          builder: (context) {
            //            return ChatbotPage();
            //          },
            //        ),
            //      );
            //    },
            //  ),
          ],
        ),
        RoundedButton(
              text: "บุคคลทั่วไป",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
               RoundedButton(
               text: "สำหรับแพทย์/พยาบาล",
                //color: kPrimaryLightColor,
                //textColor: Colors.black,
               press: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) {
                       return SignUpScreen();
                     },
                   ),
                 );
               },
             ),
           ] ),
    ));
  }
}
