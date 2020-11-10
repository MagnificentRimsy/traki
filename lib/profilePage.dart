import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:traki/repeatedWidgets/CustomTextField.dart';
import 'package:traki/res/size.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double expanded_height = 400;

  final double rounded_container_height = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              _buildSliverHead(),
              SliverToBoxAdapter(
                child: _buildDetail(),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
            ),
            child: SizedBox(
              height: kToolbarHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(
                  //     horizontal: 15,
                  //   ),
                  //   child: Icon(
                  //     Icons.menu,
                  //     color: Colors.white,
                  //   ),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSliverHead() {
    return SliverPersistentHeader(
      delegate: DetailSliverDelegate(
        expanded_height,
        rounded_container_height,
      ),
    );
  }

  Widget _buildDetail() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // _buildUserInfo(),
          // Padding(
          //   padding: EdgeInsets.symmetric(
          //     vertical: 15,
          //     horizontal: 15,
          //   ),
          //   child: Text(
          //     "The balearic Lsnaled,The Lsnaled,The balea balearic Lsnaled,"
          //     "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
          //     "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
          //     "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
          //     "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
          //     "The balearic Lsnaled,The balearic Lsnaled,The balea Lsnaled,"
          //     "The balearic Lsnaled,The balearic Lsnaled,",
          //     style: TextStyle(
          //       color: Colors.black38,
          //       height: 1.4,
          //       fontSize: 14,
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(
          //     left: 15,
          //     right: 30,
          //     top: 10,
          //     bottom: 10,
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: <Widget>[
          //       Text(
          //         "Featured",
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontWeight: FontWeight.bold,
          //           fontSize: 18,
          //           letterSpacing: 1.6,
          //         ),
          //       ),
          //       Text(
          //         "View all",
          //         style: TextStyle(
          //           color: Colors.deepOrange,
          //           fontSize: 16,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: 120,
          //   child: ListView.builder(
          //     padding: EdgeInsets.symmetric(
          //       horizontal: 15,
          //     ),
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) {
          //       return Container(
          //         height: 100,
          //         width: 120,
          //         margin: EdgeInsets.only(
          //           right: 15,
          //         ),
          //         child: Image.asset(
          //           "assets/icons/profile.png",
          //           fit: BoxFit.cover,
          //         ),
          //       );
          //     },
          //   ),
          // ),




          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Container(
              // margin: EdgeInsets.symmetric(horizontal: size.convert(context, 24)),
              child: Column(
                children: [
                  Container(
                    child: CustomTextField(
                      iconWidget: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.convert(context, 15)),
                        child: Icon(
                          Icons.perm_identity,
                          color: Colors.grey[500],
                        ),
                      ),
                      hints: "Name",
                    ),
                  ),
                  SizedBox(
                    height: size.convert(context, 10),
                  ),
                  Container(
                    child: CustomTextField(
                      iconWidget: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.convert(context, 15)),
                        child: Icon(
                          Icons.mail,
                          color: Colors.grey[500],
                        ),
                      ),
                      hints: "Email",
                      trailingIcon: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.convert(context, 15)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.convert(context, 10),
                  ),
                  Container(
                    child: CustomTextField(
                      iconWidget: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.convert(context, 15)),
                        child: Icon(
                          Icons.phone,
                          color: Colors.grey[500],
                        ),
                      ),
                      hints: "Phone No",
                      trailingIcon: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.convert(context, 15)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.convert(context, 15),
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(3.0, 3.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0),
                    ]),
                    child: Card(
                      // margin: EdgeInsets.all(10),
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
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top:15.0, right: 15.0, left: 15.0, bottom: 15.0),
                                      child: Column(
                                        children: [
                                          Icon(Icons.money,
                                              color: Colors.teal[500]),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text('Payment'),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:15.0, right: 15.0, left: 15.0, bottom: 15.0),
                                      child: Column(
                                        children: [
                                          Icon(Icons.phone_android,
                                              color: Colors.teal[500]),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text('My Devices'),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        children: [
                                          Icon(Icons.location_on_outlined,
                                              color: Colors.teal[500]),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text('My Locations'),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Text(
            //   "The balearic Lsnaled,The Lsnaled,The balea balearic Lsnaled,"
            //   "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
            //   "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
            //   "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
            //   "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
            //   "The balearic Lsnaled,Lsnaled,The balea ",
            //   style: TextStyle(
            //     color: Colors.black38,
            //     height: 1.4,
            //     fontSize: 14,
            //   ),
            // ),
          ),
        ],
      ),
    );
  }

  // Widget _buildUserInfo() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
  //     child: Row(
  //       children: <Widget>[
  //         ClipRRect(
  //           borderRadius: BorderRadius.circular(50),
  //           child: Image.asset(
  //             "assets/icons/profile.png",
  //             width: 50,
  //             height: 50,
  //             fit: BoxFit.cover,
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.only(
  //             left: 10,
  //           ),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: <Widget>[
  //               Text(
  //                 "Jonah Boyi",
  //                 style: TextStyle(
  //                   color: Colors.black,
  //                   fontSize: 16,
  //                   fontWeight: FontWeight.bold,
  //                 ),
  //               ),
  //               Text(
  //                 "Writer,Wonderlust",
  //                 style: TextStyle(
  //                   color: Colors.black,
  //                   fontSize: 14,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         Spacer(),
  //         Icon(
  //           Icons.share,
  //           color: Colors.black54,
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  final double rounded_container_height;

  DetailSliverDelegate(this.expandedHeight, this.rounded_container_height);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      child: Stack(
        children: <Widget>[
          Hero(
            tag: "assets/icons/whiteLogo1.png",
            child: Image.asset(
              "assets/icons/bg.png",
              width: MediaQuery.of(context).size.width,
              height: expandedHeight,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: expandedHeight - rounded_container_height - shrinkOffset,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: rounded_container_height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),

          // Positioned(
          //   top: expandedHeight - 120 - shrinkOffset,
          //   left: 30,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: <Widget>[
          //       Text(
          //         "Welcome",
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 30,
          //         ),
          //       ),
          //       Text(
          //         "To Abuja",
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 15,
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
