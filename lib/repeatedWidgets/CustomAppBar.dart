import 'dart:ffi';


import 'package:traki/res/color.dart';
import 'package:traki/res/size.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  BuildContext parentContext;
  Color color1;
  Color color2;
  Widget leadingIcon;
  Widget trailingIcon;
  Widget centerWigets;
  double hight;
  double paddingBottom;
  bool isbottomLine;
  CustomAppBar({
   @required this.parentContext,this.color1,this.color2,this.leadingIcon,
    this.trailingIcon,this.centerWigets, @required this.hight,this.paddingBottom,this.isbottomLine =false
});



  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight > 80 ? size.convert(context, hight) : hight,
      decoration: BoxDecoration(
        color: color1,
        border: isbottomLine? Border(
          bottom: BorderSide( //                    <--- top side
            color: logoColor,
            width: 1.0,
          ),
        ):Border(
          bottom: BorderSide( //                    <--- top side
            color: logoColor,
            width: 0.0,
          ),
        ),
//        gradient: isbottomLine?LinearGradient(
//          colors: [Colors.white,Colors.white],
//          begin: Alignment.centerLeft,
//          end: Alignment.centerRight,
//        ):LinearGradient(
//          colors: [logoColor,logoColor],
//          begin: Alignment.centerLeft,
//          end: Alignment.centerRight,
//        )
      ),
      child: Padding(
        padding:  EdgeInsets.only(bottom: paddingBottom ?? size.convert(context, 5),right: size.convert(context, 20), left: size.convert(context, 20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            leadingIcon == null ?SizedBox(width: 5,) : leadingIcon ,
            centerWigets == null ?SizedBox(width: 5,) : centerWigets ,
            trailingIcon == null ?SizedBox(width: 5,) : trailingIcon ,
          ],
        ),
      ),
    );
  }
}
