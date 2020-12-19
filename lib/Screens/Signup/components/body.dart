import 'package:flutter/material.dart';
import 'package:ifightcovid19/Screens/Information/information_screen.dart';
import 'package:ifightcovid19/Screens/Signup/components/background.dart';
import 'package:ifightcovid19/components/already_have_an_account_acheck.dart';
import 'package:ifightcovid19/components/rounded_button.dart';
import 'package:ifightcovid19/components/rounded_input_field.dart';
import 'package:ifightcovid19/components/rounded_password_field.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
           child: new Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(  "",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            new TextFormField(
                keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'you@example.com',
                  labelText: 'username'
                ),
                // validator: this._validateEmail,
                // onSaved: (String value) {
                //   this._data.email = value;
                // }
              ),
              new TextFormField(
                obscureText: true, // Use secure text for passwords.
                decoration: new InputDecoration(
                  hintText: 'Password',
                  labelText: 'Enter your password'
                ),
                // validator: this._validatePassword,
                // onSaved: (String value) {
                //   this._data.password = value;
                // }
              ),
            
    // TextField(),
  
        
            // RoundedInputField(
            //   hintText: "User",
            //   onChanged: (value) {},
            // ),
            // RoundedPasswordField(
            //   onChanged: (value) {},
            // ),
            // RoundedButton(
            //   text: "เข้าสู่ระบบ",
            //   press: () {},
            // ),
            SizedBox(height: size.height * 0.03),
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
                      return InformationScreen();
                    },
                  ),
                );
              },
            ),
            // AlreadyHaveAnAccountCheck(
            //   login: false,
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return InformationScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),
           
          ],
        ),
      ),
    ));
  }
}
