import 'package:traki/res/color.dart';
import 'package:traki/res/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class filledButton extends StatelessWidget {
  final Function onTap;
  Color color1;
  Color txtcolor;
  String txt;
  double h;
  double w;
  Color  borderColor;
  double borderwidth;
  double fontsize;
  String fontfamily;
  Widget leftWidget;
  Widget rigtWidget;

  filledButton({this.borderColor,this.borderwidth,this.fontfamily,this.color1, this.txt,this.h,this.w,this.txtcolor,this.fontsize,this.leftWidget,this.rigtWidget, this.onTap});
  @override
  Widget build(BuildContext context) {
    Size size1 = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(right: 10, left: 10),
        height: h ?? size.convert(context, 52) ,
        width: w ?? size.convertWidth(context, 368),
        decoration: BoxDecoration(
            color: color1 == null ? appColor : color1 ,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
            width: borderwidth == null ? 0 : borderwidth,
              color: borderColor == null ? appColor : borderColor,
        )
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            leftWidget??Container(),
            Text(txt ==null ?"Empty":txt,
                style: TextStyle(
                  color: txtcolor == null ? Colors.white : txtcolor,
                  fontSize: fontsize == null ? 15 : fontsize,
                  fontFamily: fontfamily == null ? "gibsonbold" : fontfamily,
                ),
              ),
            rigtWidget??Container(),
          ],
        ),

      ),
    );
  }
}
