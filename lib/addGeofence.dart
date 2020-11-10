import 'package:flutter/material.dart';
import 'package:traki/repeatedWidgets/CustomTextField.dart';
import 'package:traki/repeatedWidgets/filledButton.dart';
import 'package:traki/res/color.dart';
import 'package:traki/res/size.dart';

import 'myDevice.dart';

void main() => runApp(AddGeofencePage());

class AddGeofencePage extends StatefulWidget {
  AddGeofencePage({Key key}) : super(key: key);

  @override
  _AddGeofencePageState createState() => _AddGeofencePageState();
}

class _AddGeofencePageState extends State<AddGeofencePage> {
  String valueChoose;
  List listItem = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .5,
        title: Center(
            child: Text(
          'Add Geofence',
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
                  padding: EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 7, bottom: 7),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Colors.grey[400],
                        size: 20.09,
                      ),
                      SizedBox(
                        width: size.convert(context, 10),
                      ),
                      Expanded(
                        child: DropdownButton(
                          hint: Text(
                            "My Locations",
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          dropdownColor: Colors.white,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey[400],
                          ),
                          iconSize: 36,
                          elevation: 5,
                          isExpanded: true,
                          underline: SizedBox(),
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          value: valueChoose,
                          onChanged: (newValue) {
                            setState(() {
                              valueChoose = newValue;
                            });
                          },
                          items: listItem.map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300], width: 1),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300],
                          offset: Offset(3.0, 3.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.convert(context, 150),
                ),
                Container(
                  child: CustomTextField(
                    color1: Colors.white70,
                    iconWidget: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: size.convert(context, 15)),
                    ),
                    hints: "Geofence Name",
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
                  height: size.convert(context, 10),
                ),
                Container(
                  child: CustomTextField(
                    color1: Colors.white70,
                    iconWidget: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: size.convert(context, 15)),
                    ),
                    hints: "Distance",
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
                  height: size.convert(context, 10),
                ),
                Container(
                  child: CustomTextField(
                    color1: Colors.white70,
                    iconWidget: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: size.convert(context, 15)),
                    ),
                    hints: "Alert On",
                    trailingIcon: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: size.convert(context, 15)),
                      child: Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                        activeTrackColor: Colors.teal.shade100,
                        activeColor: Colors.teal,
                      ),
                    ),
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
                  txt: "ADD GEOFENCE",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => myDevices()));
                  },
                )),
                SizedBox(
                  height: size.convert(context, 60),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
