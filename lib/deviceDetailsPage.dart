import 'package:flutter/material.dart';
import 'package:traki/myDevice.dart';
import 'package:traki/repeatedWidgets/filledButton.dart';
import 'package:traki/res/color.dart';
import 'package:traki/res/size.dart';

void main() => runApp(DeviceDetailsPage());

class DeviceDetailsPage extends StatefulWidget {
  DeviceDetailsPage({Key key}) : super(key: key);

  @override
  _DeviceDetailsPageState createState() => _DeviceDetailsPageState();
}

class _DeviceDetailsPageState extends State<DeviceDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .5,
        title: Center(
            child: Text(
          'Device Details',
          textAlign: TextAlign.left,
        )),
        backgroundColor: appColor,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey[100],
                      offset: Offset(3.0, 3.0),
                      blurRadius: 10.0,
                      spreadRadius: 1.0),
                ]),
                child: Card(
                  margin: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, left: 15.0, right: 15.0, bottom: 5.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Row(children: <Widget>[
                            Text(
                              'Device 2',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.black),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(top: 15.0),
                              padding: EdgeInsets.symmetric(
                                horizontal: size.convert(context, 5),
                                vertical: size.convert(context, 5),
                              ),
                              decoration: BoxDecoration(
                                color: appColor,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Icon(
                                Icons.edit,
                                color: whiteColor,
                              ),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Row(children: <Widget>[
                            Text(
                              "ID - 0987267",
                              style: TextStyle(color: hintsColor),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 10),
                    child: Flexible(
                      child: Text(
                        'Current Location',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: appColor,
                          fontSize: 17.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Card(
                margin: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      contentPadding: EdgeInsets.only(
                          top: 0.0, left: 0.0, right: 0.0, bottom: 1.0),
                      title: Image.asset(
                        "assets/icons/location.png",
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(
                          top: 0, left: 10, right: 10, bottom: 0.0),
                      leading: Icon(
                        Icons.location_on_outlined,
                        color: Colors.green,
                      ),
                      title: Text('AlphaCell Plaza'),
                      subtitle: Text('Abuja'),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(
                          top: 0, left: 10, right: 10, bottom: 0.0),
                      leading: Icon(
                        Icons.location_on_outlined,
                        color: Colors.green,
                      ),
                      title: Text('AlphaCell Plaza'),
                      subtitle: Text('Abuja'),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 10),
                    child: Flexible(
                      child: Text(
                        'Location History',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: appColor,
                          fontSize: 17.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Card(
                margin: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.only(
                          top: 0, left: 10, right: 10, bottom: 0.0),
                      leading: Icon(Icons.location_on_outlined,
                          color: Colors.teal[600]),
                      title: Text(
                        'The Citadel and Towers',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text('Oladipo Diya St, Right...'),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(
                          top: 0, left: 10, right: 10, bottom: 0.0),
                      leading: Icon(Icons.location_on_outlined,
                          color: Colors.teal[600]),
                      title: Text(
                        'AlphaCell Plaza',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text('Abuja'),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('37.764198, -122.455292',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.teal[600])),
                      leading: Icon(
                        Icons.sports_baseball,
                        color: Colors.teal[500],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('2020-05-04, 02:07:56PM',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      leading: Icon(
                        Icons.access_time_outlined,
                        color: Colors.teal[500],
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 10),
                    child: Flexible(
                      child: Text(
                        'Geofence',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: appColor,
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Card(
                margin: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                child: Column(
                  children: [
                    Stack(
                      children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.only(
                              top: 0.0, left: 0.0, right: 0.0, bottom: 1.0),
                          title: Image.asset(
                            "assets/icons/location2.png",
                          ),
                        ),
                        Positioned(
                          left: 10.0,
                          bottom: 20.0,
                          child: new FloatingActionButton(
                            child: const Icon(Icons.add),
                            backgroundColor: Colors.teal.shade800,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.location_pin,
                        color: Colors.teal[500],
                      ),
                      title: Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text('School Area',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(
                                Icons.notifications,
                                color: Colors.teal[500],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(
                                Icons.edit,
                                color: Colors.teal[500],
                              ),
                            ),
                            Icon(
                              Icons.delete,
                              color: Colors.red[500],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.location_pin,
                        color: Colors.teal[500],
                      ),
                      title: Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 90),
                              child: Text('Dock',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(
                                Icons.notifications,
                                color: Colors.grey[500],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(
                                Icons.edit,
                                color: Colors.teal[500],
                              ),
                            ),
                            Icon(
                              Icons.delete,
                              color: Colors.red[500],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 10),
                    child: Flexible(
                      child: Text(
                        'Alert History',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: appColor,
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Card(
                margin: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.access_alarms_rounded,
                        color: Colors.teal[500],
                      ),
                      title: Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text('School Area',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                '27 min ago',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[500]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.access_alarms_rounded,
                        color: Colors.teal[500],
                      ),
                      title: Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 90),
                              child: Text('Dock',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text('59 min ago',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[500])),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 10),
                    child: Flexible(
                      child: Text(
                        'Events',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: appColor,
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Card(
                margin: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.calendar_today,
                        color: Colors.teal[500],
                      ),
                      title: Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text('School Area',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                '27 min ago',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[500]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.calendar_today,
                        color: Colors.teal[500],
                      ),
                      title: Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 90),
                              child: Text('Dock',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text('59 min ago',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[500])),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: size.convert(context, 30),
              ),
              Container(
                  child: filledButton(
                txt: "DELETE DEVICE",
                color1: Colors.red,
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
    );
  }
}
