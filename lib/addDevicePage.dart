import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:traki/myDevice.dart';
import 'package:traki/repeatedWidgets/CustomTextField.dart';
import 'package:traki/repeatedWidgets/filledButton.dart';
import 'package:traki/res/color.dart';
import 'package:traki/res/size.dart';

void main() => runApp(AddDevicePage());

class AddDevicePage extends StatefulWidget {
  AddDevicePage({Key key}) : super(key: key);

  @override
  _AddDevicePageState createState() => _AddDevicePageState();
}

class _AddDevicePageState extends State<AddDevicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .5,
        title: Center(
            child: Text(
          'Add Device',
          textAlign: TextAlign.left,
        )),
        backgroundColor: appColor,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: size.convert(context, 24)),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: size.convert(context, 30),
                ),

                MaterialButton(
                  onPressed: () {},
                  color: appColor,
                  textColor: Colors.white,
                  splashColor: Colors.white,
                  child: Image.asset("assets/icons/whiteLogo1.png"),
                  padding: EdgeInsets.all(50),
                  shape: CircleBorder(),
                ),

                // CircleAvatar(
                //   radius: 60.0,
                //   backgroundImage:AssetImage("assets/icons/whiteLogo1.png", ),
                //   backgroundColor: appColor,
                // ),

                SizedBox(
                  height: size.convert(context, 30),
                ),
                Container(
                  child: CustomTextField(
                    color1: Colors.white70,
                    iconWidget: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.convert(context, 15)),
                        child: Icon(
                          Icons.perm_identity,
                          color: Colors.grey[400],
                          size: 25,
                        )),
                    hints: "Name",
                  ),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey[300],
                        offset: Offset(3.0, 3.0),
                        blurRadius: 10.0,
                        spreadRadius: 1.0),
                  ]),
                ),
                SizedBox(
                  height: size.convert(context, 30),
                ),
                Container(
                  child: CustomTextField(
                    color1: Colors.white70,
                    iconWidget: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.convert(context, 15)),
                        child: Icon(
                          Icons.phone_android,
                          color: Colors.grey[400],
                          size: 20,
                        )),
                    hints: "Device Id",
                    trailingIcon: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.convert(context, 15)),
                        child: Icon(
                          Icons.qr_code,
                          color: Colors.grey[400],
                          size: 25,
                        )),
                  ),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey[300],
                        offset: Offset(3.0, 3.0),
                        blurRadius: 10.0,
                        spreadRadius: 1.0),
                  ]),
                ),
                SizedBox(
                  height: size.convert(context, 40),
                ),
                Container(
                    child: filledButton(
                  txt: "Save",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => myDevices()));
                  },
                )),
                SizedBox(
                  height: size.convert(context, 30),
                ),

                // Below is just a circular Loading Indicator
                // Container(
                //         height: 80.0,
                //         width: 200.0,
                //         child: Card(
                //           color: Colors.white,
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: <Widget>[
                //               Text(
                //                 "Downloading File: $progressString",
                //                 style: TextStyle(
                //                   color: Colors.green,
                //                 ),
                //               )
                //             ],
                //           ),
                //         ),
                //       )
                //     : Container()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
