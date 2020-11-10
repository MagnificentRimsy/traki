import 'package:flutter/material.dart';
import 'package:traki/res/color.dart';
import 'package:traki/res/size.dart';

void main() => runApp(MyLocationsPage());

class MyLocationsPage extends StatefulWidget {
  MyLocationsPage({Key key}) : super(key: key);

  @override
  _MyLocationsPageState createState() => _MyLocationsPageState();
}

class _MyLocationsPageState extends State<MyLocationsPage> {
  String valueChoose;
  List listItem = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .5,
        title: Center(
            child: Text(
          'My Locations',
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

                  // CustomTextField(
                  //   color1: Colors.white70,
                  //   iconWidget: Container(
                  //       margin: EdgeInsets.symmetric(
                  //           horizontal: size.convert(context, 15)),
                  //       child: Icon(
                  //         Icons.perm_identity,
                  //         color: Colors.grey[400],
                  //         size: 25,
                  //       )),
                  //   hints: "Name",
                  // ),
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
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 10,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Colors.teal[500],
                        ),
                        title: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text('Home',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ),
                              Icon(
                                Icons.edit,
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
                          Icons.work,
                          color: Colors.teal[500],
                        ),
                        title: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text('Work',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ),
                              Icon(
                                Icons.edit,
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
                                child: Text('School',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ),
                              Icon(
                                Icons.edit,
                                color: Colors.grey[500],
                              ),
                            ],
                          ),
                        ),
                        subtitle: Text('Abuja'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.convert(context, 60),
                ),
               
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 280),
                      child: FloatingActionButton(
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.teal.shade800
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
