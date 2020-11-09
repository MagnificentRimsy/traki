import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traki/homePage.dart';
import 'package:traki/repeatedWidgets/CustomTextField.dart';
import 'package:traki/repeatedWidgets/filledButton.dart';
import 'package:traki/res/color.dart';
import 'package:traki/res/size.dart';
import 'package:traki/res/style.dart';

class registeratiion extends StatefulWidget {
  @override
  _registeratiionState createState() => _registeratiionState();
}

class _registeratiionState extends State<registeratiion> {
  bool allowTerm = false;
  bool allowlegal = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.convert(context, 24)),
      child: Column(
        children: [
          SizedBox(
            height: size.convert(context, 40),
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
                  child: SvgPicture.asset("assets/icons/email.svg")),
              hints: "Email",
            ),
          ),
          SizedBox(height: size.convert(context, 10),),

          Container(
            child: CustomTextField(
              iconWidget: Container(
                  margin: EdgeInsets.symmetric(horizontal: size.convert(context, 15)),
                  child: SvgPicture.asset("assets/icons/tel.svg")),
              hints: "Phone Number",
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
          // SizedBox(height: size.convert(context, 10),),

          // Container(
          //   child: CustomTextField(
          //     iconWidget: Container(
          //         margin: EdgeInsets.symmetric(horizontal: size.convert(context, 15)),
          //         child: SvgPicture.asset("assets/icons/lock.svg")),
          //     hints: "Confirm Password",
          //     trailingIcon: Container(
          //         margin: EdgeInsets.symmetric(horizontal: size.convert(context, 15)),
          //         child: SvgPicture.asset("assets/icons/eye.svg")),
          //     obscureText: true,

          //   ),
          // ),
          SizedBox(height: size.convert(context, 30),),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.convertWidth(context, 10)),
            //alignment: Alignment.centerLeft,
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      allowTerm = !allowTerm;
                    });
                  },
                  child: Container(
                    width: size.convert(context, 25),
                    height: size.convert(context, 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: allowTerm ? appColor : Colors.white,
                        border: Border.all(
                            color: appColor,
                            width: 2
                        )
                    ),
                    child: allowTerm ? Center(child: Icon(Icons.done, color: Colors.white,),) : Container(),
                  ),
                ),
                SizedBox(width: size.convertWidth(context, 14),),
                Container(child: RichText(
                  text: TextSpan(
                    text: "Accept terms and conditions",
                    style: fontStyle.gibsonbold(
                      fontSize: size.convert(context, 17),
                      color: appColor
                    )
                  ),
                ),)
              ],
            ),
          ),
          SizedBox(height: size.convert(context, 10),),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.convertWidth(context, 10)),
            //alignment: Alignment.centerLeft,
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      allowlegal = !allowlegal;

                    });
                  },
                  child: Container(
                    width: size.convert(context, 25),
                    height: size.convert(context, 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: allowlegal ? appColor : Colors.white,
                        border: Border.all(
                            color: appColor,
                            width: 2
                        )
                    ),
                    child: allowlegal ? Center(child: Icon(Icons.done, color: Colors.white,),) : Container(),
                  ),
                ),
                SizedBox(width: size.convertWidth(context, 14),),
                Container(child: RichText(
                  text: TextSpan(
                      text: "I have read legal documents",
                      style: fontStyle.gibsonbold(
                          fontSize: size.convert(context, 17),
                          color: appColor
                      )
                  ),
                ),)

              ],
            ),
          ),
          SizedBox(height: size.convert(context, 30),),
          Container(child: filledButton(
            txt: "REGISTER",
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage()));
            },
          )),
          SizedBox(height: size.convert(context, 15),),
        ],
      ),
    );
  }
}
