import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traki/addDevicePage.dart';
import 'package:traki/deviceDetailsPage.dart';
import 'package:traki/repeatedWidgets/CustomAppBar.dart';
import 'package:traki/res/size.dart';
import 'package:traki/res/color.dart';
import 'package:traki/res/style.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

import 'repeatedWidgets/CustomTextField.dart';
import 'repeatedWidgets/filledButton.dart';

class myDevices extends StatefulWidget {
  @override
  _myDevicesState createState() => _myDevicesState();
}

class _myDevicesState extends State<myDevices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.convert(context, 88)),
        child: CustomAppBar(
          hight: size.convert(context, 88),
          parentContext: context,
          color1: appColor,
          color2: appColor,
          leadingIcon: _leadingIcon(),
          trailingIcon: _trailingIcon(),
          centerWigets: _centerWigets(),
        ),
      ),
      body: _Body(),
    );
  }

  _trailingIcon() {
    return Container(
      child: Icon(
        Icons.menu,
        color: whiteColor,
        size: size.convert(context, 30),
      ),
    );
  }

  _centerWigets() {
    return Container(
      child: RichText(
        maxLines: 1,
        text: TextSpan(
            text: "My Devices",
            style: fontStyle.gibsonbold(
                fontSize: size.convert(context, 24), color: whiteColor)),
      ),
    );
  }

  _Body() {
    return Container(
      margin: EdgeInsets.only(
        left: size.convertWidth(context, 25),
        right: size.convertWidth(context, 25),
        top: size.convertWidth(context, 30),
      ),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return GestureDetector(
              onTap: () {
                _addDevice();
                //Navigator.push(context, PageTransition(ch));
              },
              child: DottedBorder(
                  borderType: BorderType.RRect,
                  dashPattern: [8, 6],
                  strokeWidth: 2,
                  radius: Radius.circular(10),
                  color: appColor,
                  child: Center(
                    child: Container(
                      width: size.convert(context, 152),
                      height: size.convert(context, 160),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        //color: Colors.red
                      ),
                      child: Center(
                        child: Container(
                          width: size.convert(context, 52),
                          height: size.convert(context, 52),
                          decoration: BoxDecoration(
                              color: appColor, shape: BoxShape.circle),
                          child: InkWell(
                            child: Icon(
                              IcoFontIcons.plus,
                              color: whiteColor,
                              size: size.convert(context, 22),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AddDevicePage(),
                                  ));
                            },
                          ),
                        ),
                      ),
                    ),
                  )),
            );
          } else {
            return Container(
              width: size.convert(context, 152),
              height: size.convert(context, 170),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: hintsColor.withOpacity(0.1),
                        blurRadius: 5,
                        spreadRadius: 5)
                  ]
                  //color: Colors.red
                  ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: size.convert(context, 152),
                          height: size.convert(context, 70),
                          decoration: BoxDecoration(
                            color: appColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DeviceDetailsPage()));
                            },
                            child: Image.asset(
                              "assets/icons/whiteLogo1.png",
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.convert(context, 12)),
                    height: size.convert(context, 92),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.convert(context, 14),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: RichText(
                                  maxLines: 1,
                                  text: TextSpan(
                                      text: "Device ${index}",
                                      style: fontStyle.gibsonbold(
                                        fontSize: size.convert(context, 14),
                                      )),
                                ),
                              ),
                              SizedBox(
                                width: size.convert(context, 8),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: appColor,
                                ),
                                child: Center(
                                    child: Icon(
                                  Icons.done,
                                  color: whiteColor,
                                  size: 15,
                                )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.convert(context, 6),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Image.asset(
                                  "assets/icons/smallMap.png",
                                  width: size.convert(context, 13),
                                ),
                              ),
                              SizedBox(
                                width: size.convert(context, 8),
                              ),
                              Container(
                                child: RichText(
                                  maxLines: 1,
                                  text: TextSpan(
                                      text: "Ikeja, Lagos",
                                      style: fontStyle.gibsonbold(
                                          fontSize: size.convert(context, 11),
                                          color: hintsColor.withOpacity(0.50))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        "assets/icons/dateIcon.png",
                                        width: size.convert(context, 13),
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.convert(context, 8),
                                    ),
                                    Container(
                                      child: RichText(
                                        maxLines: 1,
                                        text: TextSpan(
                                            text: "Ikeja, Lagos",
                                            style: fontStyle.gibsonbold(
                                                fontSize:
                                                    size.convert(context, 11),
                                                color: hintsColor
                                                    .withOpacity(0.50))),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: size.convert(context, 5),
                                  vertical: size.convert(context, 5),
                                ),
                                decoration: BoxDecoration(
                                  color: appColor,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: InkWell(
                                  onTap: () {
                                     Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DeviceDetailsPage()));
                                  },
                                                                  child: Icon(
                                    Icons.edit,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        },
        staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
        mainAxisSpacing: size.convert(context, 22),
        crossAxisSpacing: size.convert(context, 22),
      ),
    );
  }

  _addDevice() {
    print("this will done before");
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              margin:
                  EdgeInsets.symmetric(horizontal: size.convert(context, 10)),
              height: size.convert(context, size.convert(context, 320)),
              width: size.convertWidth(context, 334),
              child: Column(
                children: [
                  SizedBox(
                    height: size.convert(context, 10),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: appColor,
                        size: size.convert(context, 30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.convert(context, 10),
                  ),
                  Container(
                    width: size.convert(context, 124),
                    height: size.convert(context, 124),
                    decoration: BoxDecoration(
                      color: appColor,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/icons/whiteLogo1.png"),
                  ),
                  SizedBox(
                    height: size.convert(context, 22),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: size.convert(context, 10)),
                    child: CustomTextField(
                      height: size.convert(context, 44),
                      iconWidget: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: size.convert(context, 15)),
                          child: SvgPicture.asset("assets/icons/user.svg")),
                      hints: "Name",
                    ),
                  ),
                  SizedBox(
                    height: size.convert(context, 12),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: size.convert(context, 10)),
                      child: filledButton(
                        h: size.convert(context, 44),
                        txt: "Save",
                        onTap: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage()));
                        },
                      )),
                ],
              ),
            ),
          );
        });
  }

  _leadingIcon() {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        child: Icon(
          Icons.keyboard_backspace,
          color: whiteColor,
          size: size.convert(context, 30),
        ),
      ),
    );
  }
}
