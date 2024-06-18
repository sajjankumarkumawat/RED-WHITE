import 'package:arti/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'const.dart';



class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Images/rnwlogo_png.png', height: 200),
            SizedBox(height: 20),
            Text(
              "LOGIN",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: themecolor)),
            ),
            SizedBox(height: 10),
            Text('Please login to continue using our app'),
            SizedBox(height: 30),
            TextField(
              onTap: () {},
              cursorColor: Colors.black54,
              style: const TextStyle(fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: InputBorder.none,
                labelText: "Name / Grid",
                labelStyle:  TextStyle(color: themecolor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:  BorderSide(color:themecolor),
                ),
                hintText: 'Enter your Name or Grid',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:  BorderSide(color:themecolor),
                ),
                hintStyle: const TextStyle(fontSize: 16, color: Colors.black54),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
              ),
            ),
            SizedBox(height: 20),
          TextField(
            onTap: () {},
            obscureText: _obscureText,
            cursorColor: Colors.black54,
            style: const TextStyle(fontWeight: FontWeight.w400),
            decoration: InputDecoration(
              alignLabelWithHint: true,
              border: InputBorder.none,
              labelText: "Password",
              labelStyle:  TextStyle(color: themecolor),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:  BorderSide(color: themecolor),
              ),
              hintText: 'Enter your password',
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:  BorderSide(color:themecolor),
              ),
              hintStyle: const TextStyle(fontSize: 16, color: Colors.black54),
              contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              suffixIcon: IconButton(
                icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: Text('Forgot Password?'),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen(),));
              },
              child: Text('Log In',style: TextStyle(fontSize: 18,color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: themecolor,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color:themecolor),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text('----------   Or connect with   ----------'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor:themecolor,
                  radius: 25,
                  child: IconButton(
                    icon: Icon(Icons.facebook, color: Colors.white,size: 32,),
                    onPressed: () {},
                  ),
                ),
                CircleAvatar(
                  backgroundColor:themecolor,
                  radius: 25,
                  child: IconButton(
                    icon: Icon(Icons.mail, color: Colors.white,size: 32),
                    onPressed: () {},
                  ),
                ),
                CircleAvatar(  backgroundColor:  themecolor,
                  radius: 25,
                  child: IconButton(
                    icon: Icon(FontAwesomeIcons.google, color: Colors.white,size: 32),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Images/rnwlogo_png.png', height: 200),
            Text(
              "SIGN UP",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: themecolor)),
            ),
            SizedBox(height: 10),
            Text('Please fill the details and create account'),
            SizedBox(height: 30),
            TextField(
              onTap: () {},
              cursorColor: Colors.black54,
              style: const TextStyle(fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: InputBorder.none,
                labelText: "Full Name",
                labelStyle:  TextStyle(color: themecolor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:  BorderSide(color:themecolor),
                ),
                hintText: 'Enter your full Name',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:  BorderSide(color:themecolor),
                ),
                hintStyle: const TextStyle(fontSize: 16, color: Colors.black54),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              onTap: () {},
              cursorColor: Colors.black54,
              style: const TextStyle(fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: InputBorder.none,
                labelText: "E-mail",
                labelStyle:  TextStyle(color:themecolor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:  BorderSide(color:themecolor),
                ),
                hintText: 'Enter your Email',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:  BorderSide(color:themecolor),
                ),
                hintStyle: const TextStyle(fontSize: 16, color: Colors.black54),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              onTap: () {},
              cursorColor: Colors.black54,
              style: const TextStyle(fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: InputBorder.none,
                labelText: "Password",
                labelStyle:  TextStyle(color: themecolor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:  BorderSide(color:themecolor),
                ),
                hintText: 'Set your password',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:  BorderSide(color:themecolor),
                ),
                hintStyle: const TextStyle(fontSize: 16, color: Colors.black54),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen(),));
              },
              child: Text('Sign Up',style: TextStyle(fontSize: 18,color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor:themecolor,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? '),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(color: themecolor),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text('----------   Or connect with   ----------'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: themecolor,
                  radius: 25,
                  child: IconButton(
                    icon: Icon(Icons.facebook, color: Colors.white,size: 32,),
                    onPressed: () {},
                  ),
                ),
                CircleAvatar(
                  backgroundColor: themecolor,
                  radius: 25,
                  child: IconButton(
                    icon: Icon(Icons.mail, color: Colors.white,size: 32),
                    onPressed: () {},
                  ),
                ),
                CircleAvatar(  backgroundColor:  themecolor,
                  radius: 25,
                  child: IconButton(
                    icon: Icon(FontAwesomeIcons.google, color: Colors.white,size: 32),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
