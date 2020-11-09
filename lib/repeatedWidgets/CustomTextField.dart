import 'package:traki/res/color.dart';
import 'package:traki/res/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  Color color1;
  Widget iconWidget;
  Function onchange;
  String hints;
  Widget trailingIcon ;
  double borderwidth;
  double height;
  TextInputType textInputType;
  TextEditingController textEditingController;
  bool obscureText;
  bool isEnable;


  CustomTextField({this.isEnable=true,this.obscureText,this.textInputType,this.borderwidth,this.trailingIcon,this.hints,this.color1, this.iconWidget,this.textEditingController,this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height??size.convert(context, 55),
      padding: EdgeInsets.only(right: 5, left: 5),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          color: color1 == null ? appColor : color1,
          width: borderwidth==null ? 2 : borderwidth ,
        ),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: <Widget>[
           iconWidget == null ? Container() : iconWidget,
          SizedBox(width: 10,),
          Expanded(
            child: TextFormField(
              enabled: isEnable,
              obscureText: obscureText ?? false,
              keyboardType: textInputType == null  ? TextInputType.text: textInputType,
              controller: textEditingController,

              decoration: InputDecoration(
                disabledBorder: InputBorder.none,
                border: InputBorder.none,
                hintText: hints==null ? "": hints,
                hintStyle: TextStyle(
                  fontSize: size.convert(context, 15),
                  fontFamily: "gibsonbold",
                  color: hintsColor.withOpacity(0.56),


                )
              ),
              //autofocus: true,
//              style: TextStyle(
//
//              ),

            ),
          ),
          trailingIcon == null ? Container() : trailingIcon,
        ],
      ),
    );
  }
}
