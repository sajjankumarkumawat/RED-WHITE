import 'package:arti/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'const.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SizedBox(
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height / 2,
              width: size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Images/rnwlogo.jpeg"))),
            ),
            Text(
              "Welcome to",
              style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 34, color: Color(0xff07395A),fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 4,),
            Text(
              "Red & White",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,

                      color: themecolor)),
            ),
            Text(
              "Multimedia Education",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: themecolor)),
            ),
            SizedBox(height: size.height/8,),
            ElevatedButton(onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
            },
                style: ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(size.width/1.8, size.height/17)),
                    backgroundColor: WidgetStatePropertyAll(themecolor)),
                child: Text("Get Started   >",style: TextStyle(fontSize: 18,color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
