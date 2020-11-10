import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traki/addGeofence.dart';
import 'package:traki/addLocation.dart';
import 'package:traki/myDevice.dart';
import 'package:traki/profilePage.dart';
import 'package:traki/repeatedWidgets/circularImage.dart';
import 'package:traki/res/color.dart';
import 'package:traki/res/size.dart';
import 'package:traki/res/style.dart';
import 'package:page_transition/page_transition.dart';
import 'package:traki/rough.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  AnimationController _animationController;
  Animation<double> drawerWidth;

  bool drawerClose = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    drawerWidth = Tween<double>(begin: 0, end: 0).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _body(),
//          drawerClose ? Container():Container(
//            width: MediaQuery.of(context).size.width,
//            height: MediaQuery.of(context).size.height,
//            decoration: BoxDecoration(
//                color: Colors.transparent.withOpacity(0.66)
//            ),
//          ),
          drawerWidth.value < 20.0 ? Container() : drawerBody(),
        ],
      ),
    );
  }

  drawerBody() {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(vertical: size.convert(context, 64)),
      duration: Duration(milliseconds: 200),
      width: drawerWidth.value,
      decoration: BoxDecoration(
          color: appColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xffBECBC9).withOpacity(0.99),
              blurRadius: 95.0, // soften the shadow
              spreadRadius: 100.0,
            ),
          ]),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff1AACA1),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            height: size.convert(context, 198),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.convert(context, 20)),
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                      onTap: () {
                        drawerWidth = Tween<double>(
                                begin: 0, end: size.convertWidth(context, 310))
                            .animate(_animationController)
                              ..addListener(() {
                                setState(() {
                                  drawerClose = true;
                                });
                              });
                        _animationController.reverse();
//                        drawerWidth.addStatusListener((st){
//                          if(st == AnimationStatus.completed) drawerWidth = Tween<double>(begin: 0, end: 0).animate(_animationController);
//                        });
                      },
                      child: Icon(
                        Icons.list,
                        color: whiteColor,
                      )),
                ),
                drawerWidth.value > 150
                    ? Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.convert(context, 24)),
                        child: Row(
                          children: [
                            Container(
                              //alignment: Alignment.centerLeft,
                              height: size.convert(context, 64),
                              width: size.convert(context, 64),
                              decoration: BoxDecoration(
                                  color: appColor.withOpacity(0.99),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                child: Image.asset(
                                  "assets/icons/whiteLogo1.png",
                                  color: whiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.convert(context, 24)),
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    maxLines: 1,
                    text: TextSpan(
                        text: "Timothy Soladoye",
                        style: fontStyle.gibsonbold(
                            fontSize: size.convert(context, 24),
                            color: whiteColor)),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.convert(context, 24)),
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    maxLines: 1,
                    text: TextSpan(
                        text: "timothysoladoye@gmail.com",
                        style: fontStyle.gibsonbold(
                            fontSize: size.convert(context, 14),
                            color: whiteColor)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.convert(context, 22),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: ProfilePage(),
                      type: PageTransitionType.topToBottom));
            },
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: DetailPage(),
                        type: PageTransitionType.topToBottom));
              },
              child: Container(
                margin:
                    EdgeInsets.symmetric(horizontal: size.convert(context, 26)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/icons/profile.png",
                      width: size.convert(context, 26),
                      height: size.convert(context, 26),
                    ),
                    SizedBox(
                      width: size.convert(context, 18),
                    ),
                    Expanded(
                      child: Container(
                        child: RichText(
                          maxLines: 1,
                          text: TextSpan(
                              text: "Profile",
                              style: fontStyle.GibsonRegular(
                                color: whiteColor,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.convert(context, 15),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: AddLocationPage(),
                      type: PageTransitionType.topToBottom));
            },
            child: Container(
              margin:
                  EdgeInsets.symmetric(horizontal: size.convert(context, 26)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/icons/map.png",
                    width: size.convert(context, 26),
                    height: size.convert(context, 26),
                  ),
                  SizedBox(
                    width: size.convert(context, 18),
                  ),
                  Expanded(
                    child: Container(
                      child: RichText(
                        maxLines: 1,
                        text: TextSpan(
                            text: "My Locations",
                            style: fontStyle.GibsonRegular(
                              color: whiteColor,
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.convert(context, 15),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: myDevices(),
                      type: PageTransitionType.bottomToTop));
            },
            child: Container(
              margin:
                  EdgeInsets.symmetric(horizontal: size.convert(context, 26)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/icons/device.png",
                    width: size.convert(context, 26),
                    height: size.convert(context, 26),
                  ),
                  SizedBox(
                    width: size.convert(context, 18),
                  ),
                  Expanded(
                    child: Container(
                      child: RichText(
                        maxLines: 1,
                        text: TextSpan(
                            text: "My Devices",
                            style: fontStyle.GibsonRegular(
                              color: whiteColor,
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.convert(context, 15),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: AddGeofencePage(),
                      type: PageTransitionType.bottomToTop));
            },
            child: Container(
              margin:
                  EdgeInsets.symmetric(horizontal: size.convert(context, 26)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/icons/payment.png",
                    width: size.convert(context, 26),
                    height: size.convert(context, 26),
                  ),
                  SizedBox(
                    width: size.convert(context, 18),
                  ),
                  Expanded(
                    child: Container(
                      child: RichText(
                        maxLines: 1,
                        text: TextSpan(
                            text: "Payments",
                            style: fontStyle.GibsonRegular(
                              color: whiteColor,
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.convert(context, 40),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.convert(context, 28)),
            alignment: Alignment.centerLeft,
            child: RichText(
              maxLines: 1,
              text: TextSpan(
                  text: "About Us",
                  style: fontStyle.GibsonRegular(
                      color: whiteColor.withOpacity(0.56),
                      fontSize: size.convert(context, 16))),
            ),
          ),
          SizedBox(
            height: size.convert(context, 20),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.convert(context, 28)),
            alignment: Alignment.centerLeft,
            child: RichText(
              maxLines: 1,
              text: TextSpan(
                  text: "Privacy Policy",
                  style: fontStyle.GibsonRegular(
                      color: whiteColor.withOpacity(0.56),
                      fontSize: size.convert(context, 16))),
            ),
          ),
          SizedBox(
            height: size.convert(context, 45),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.convert(context, 28)),
            alignment: Alignment.centerLeft,
            child: RichText(
              maxLines: 1,
              text: TextSpan(
                  text: "Log Out",
                  style: fontStyle.GibsonRegular(
                      color: whiteColor.withOpacity(0.56),
                      fontSize: size.convert(context, 16))),
            ),
          ),
        ],
      ),
    );
  }

  _body() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: size.convert(context, 26),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: size.convertWidth(context, 20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.convert(context, 52),
                  height: size.convert(context, 52),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: appColor),
                  child: GestureDetector(
                      onTap: () {
                        openDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        color: whiteColor,
                      )),
                ),
                Container(
                  child: circularImage(
                    assetImage: true,
                    imageUrl: "assets/icons/th.jpg",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  openDrawer() {
    drawerWidth = Tween<double>(begin: 0, end: size.convertWidth(context, 310))
        .animate(_animationController)
          ..addListener(() {
            setState(() {
              if (drawerWidth.value > 1) drawerClose = false;
            });
          });
    _animationController.forward();

    print("this is Drawer Value ${drawerWidth}");
  }
}
