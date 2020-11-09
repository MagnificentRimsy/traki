import 'package:flutter/material.dart';
import 'package:traki/myDevice.dart';
import 'package:traki/repeatedWidgets/CustomTextField.dart';
import 'package:traki/repeatedWidgets/filledButton.dart';
import 'package:traki/res/color.dart';
import 'package:traki/res/size.dart';

void main() => runApp(AddLabelPage());

class AddLabelPage extends StatefulWidget {
  AddLabelPage({Key key}) : super(key: key);

  @override
  _AddLabelPageState createState() => _AddLabelPageState();
}

class _AddLabelPageState extends State<AddLabelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .5,
        title: Center(
            child: Text(
          'Add Label',
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
                  height: size.convert(context, 40),
                ),
                Container(
                  child: CustomTextField(
                    color1: Colors.white70,
                    
                    hints: "Enter Label",
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
                    child: filledButton(
                  txt: "Save Location",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => myDevices()));
                  },
                )),
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
