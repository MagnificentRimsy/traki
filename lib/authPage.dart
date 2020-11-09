import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:traki/regiteration.dart';
import 'package:traki/res/color.dart';
import 'package:traki/res/size.dart';
import 'package:traki/res/style.dart';
import 'package:traki/signIn.dart';
import 'package:traki/res/style.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    //statusBarBrightness: Brightness.dark,
    //statusBarIconBrightness: Brightness.light,
  ));
  runApp(AuthPage());
}

class AuthPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: slider(),
    );
  }
}
class slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  bool registerBody = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Container(
        child: Column(children: [
          Container(
            height: size.convert(context, 216),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: appColor
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 7),
                  child: Image.asset("assets/icons/logo.png"),
                ),
                SizedBox(width: size.convertWidth(context, 5),),
                Container(
                  child: RichText(
                    text: TextSpan(
                      text: "traki.ng",
                      style: fontStyle.gibsonbold(
                        fontSize: size.convert(context, 34),
                        color: whiteColor
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: size.convert(context, 52),
            decoration: BoxDecoration(
              color: whiteColor,
            ),
            child: Row(children: [
              GestureDetector(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        height: size.convert(context, 45),
                        decoration: BoxDecoration(
                          color: whiteColor,
                        ),

                        child: Center(
                          child: Text("LOGIN",
                          style: fontStyle.gibsonbold(
                            fontSize: size.convert(context, 14),
                            color: registerBody ? hintsColor.withOpacity(0.99) : Colors.black
                          ),),
                        ),

                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        height: size.convert(context, 6),
                        decoration: BoxDecoration(
                          color: registerBody ? whiteColor : appColor ,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    registerBody = false;
                  });
                },
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    registerBody = true;
                  });
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        height: size.convert(context, 45),
                        decoration: BoxDecoration(
                          color: whiteColor,
                        ),
                        child: Center(
                          child: Text("REGISTER",
                            style: fontStyle.gibsonbold(
                                fontSize: size.convert(context, 14),
                                color: registerBody ? Colors.black : hintsColor.withOpacity(0.99)
                            ),),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        height: size.convert(context, 6),
                        decoration: BoxDecoration(
                          color: registerBody ? appColor : whiteColor ,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],),
          ),
          registerBody ? registeratiion() : signIn(),
        ],),
      )),
    );
  }
}



