import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:traki/addLabel.dart';
import 'package:traki/myDevice.dart';
import 'package:traki/repeatedWidgets/CustomTextField.dart';
import 'package:traki/repeatedWidgets/filledButton.dart';
import 'package:traki/res/color.dart';
import 'package:traki/res/size.dart';

void main() => runApp(AddLocationPage());

class AddLocationPage extends StatefulWidget {
  AddLocationPage({Key key}) : super(key: key);

  @override
  _AddLocationPageState createState() => _AddLocationPageState();
}

class _AddLocationPageState extends State<AddLocationPage> {
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

                Container(
                  child: CustomTextField(
                    color1: Colors.white70,
                    iconWidget: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: size.convert(context, 15),
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey[200],
                          size: 20,
                        )),
                    hints: "Enter an address",
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

                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 10,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.location_on_outlined,
                          color: Colors.teal[500],
                        ),
                        title: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text('The Citadel and Towers',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ),
                              Icon(
                                Icons.north_west,
                                color: Colors.grey[500],
                              ),
                            ],
                          ),
                        ),
                        subtitle: Text('Oladipo Diya St. Right Turn..'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(
                          Icons.location_on_outlined,
                          color: Colors.teal[500],
                        ),
                        title: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text('AlphaCell Plaza',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ),
                              Icon(
                                Icons.north_west,
                                color: Colors.grey[500],
                              ),
                            ],
                          ),
                        ),
                        subtitle: Text('Abuja'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(
                          Icons.location_on_outlined,
                          color: Colors.teal[500],
                        ),
                        title: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text('Unique Garden',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ),
                              Icon(
                                Icons.north_west,
                                color: Colors.grey[500],
                              ),
                            ],
                          ),
                        ),
                        subtitle: Text('Senanga Street, Abuja'),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.location_on_outlined,
                          color: Colors.teal[500],
                        ),
                        title: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text('The Citadel and Towers',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ),
                              Icon(
                                Icons.north_west,
                                color: Colors.grey[500],
                              ),
                            ],
                          ),
                        ),
                        subtitle: Text('Oladipo Diya St. Right Turn..'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(
                          Icons.location_on_outlined,
                          color: Colors.teal[500],
                        ),
                        title: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text('AlphaCell Plaza',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ),
                              Icon(
                                Icons.north_west,
                                color: Colors.grey[500],
                              ),
                            ],
                          ),
                        ),
                        subtitle: Text('Abuja'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(
                          Icons.location_on_outlined,
                          color: Colors.teal[500],
                        ),
                        title: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text('Unique Garden',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ),
                              Icon(
                                Icons.north_west,
                                color: Colors.grey[500],
                              ),
                            ],
                          ),
                        ),
                        subtitle: Text('Senanga Street, Abuja'),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: size.convert(context, 40),
                ),

                // Container(

                //     child: filledButton(

                //   txt: "Choose on map",
                //   onTap: () {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => myDevices()));
                //   },
                // )),

                Container(
                  margin: EdgeInsets.only(left: 80.0, right: 80.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: appColor),
                    ),
                    onPressed: () => {
                       Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddLabelPage()))
                    },
                    color: appColor,
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    textColor: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.location_pin),
                        Text(
                          "Choose on map",
                          style:
                              TextStyle(fontFamily: 'gibsonbold', fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.convert(context, 30),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
