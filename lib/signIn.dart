import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traki/repeatedWidgets/CustomTextField.dart';
import 'package:traki/repeatedWidgets/filledButton.dart';
import 'package:traki/res/color.dart';
import 'package:traki/res/size.dart';
import 'package:traki/res/style.dart';
class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.convert(context, 24)),
      child: Column(
        children: [
          SizedBox(
            height: size.convert(context, 50),
          ),
          Container(
            child: CustomTextField(
              iconWidget: Container(
                  margin: EdgeInsets.symmetric(horizontal: size.convert(context, 15)),
                  child: SvgPicture.asset("assets/icons/user.svg")),
              hints: "Name",
            ),
          ),
          SizedBox(height: size.convert(context, 10),),
          Container(
            child: CustomTextField(
              iconWidget: Container(
                  margin: EdgeInsets.symmetric(horizontal: size.convert(context, 15)),
                  child: SvgPicture.asset("assets/icons/lock.svg")),
              hints: "Password",
              trailingIcon: Container(
                  margin: EdgeInsets.symmetric(horizontal: size.convert(context, 15)),
                  child: SvgPicture.asset("assets/icons/eye.svg")),
              obscureText: true,
            ),
          ),
          SizedBox(height: size.convert(context, 10),),
          GestureDetector(
            onTap: (){
              print("press forgot password");
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: size.convert(context, 10)),
              alignment: Alignment.topRight,
              child: RichText(
              text: TextSpan(
                  text: "Forgot Password?",
                  style: fontStyle.gibsonbold(
                      fontSize: size.convert(context, 13),
                      color: appColor.withOpacity(0.50)
                  )
              ),
            ),),
          ),

          SizedBox(height: size.convert(context, 30),),
          Container(child: filledButton(
            txt: "LOGIN",
          )),
          SizedBox(height: size.convert(context, 15),),
        ],
      ),
    );
  }
}
