import 'package:aviro_health_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;
    Widget drawerItem(title, icon, function) {
      return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: function,
          child: Container(
            height: _screenHeight * 0.06,
            width: _screenWidth * 0.6,
            padding: EdgeInsets.only(
              left: _screenWidth * 0.04,
              right: _screenWidth * 0.02,
            ),
            decoration: BoxDecoration(
                // color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(6.0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(icon, size: 28.0),
                SizedBox(width: _screenWidth * 0.03),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.7,
                  ),
                ),
                SizedBox(width: _screenWidth * 0.02),
              ],
            ),
          ),
        ),
      );
    }

    return Drawer(
      key: new Key("side_drawer"),
      elevation: 5.0,
      child: Container(
        // // padding: EdgeInsets.symmetric(vertical: _screenHeight * 0.05),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/bk2.jpg"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Stack(
          children: [
            Opacity(
              opacity: 0.4,
              child: Container(
                decoration: BoxDecoration(
                  color: Constants.sidebarColor,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: _screenHeight * 0.055, left: 12, right: 12),
                      height: _screenHeight * 0.075,
                      // width: _screenWidth * 0.68,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: _screenWidth * 0.02),
                          Image.asset(
                            "assets/images/logo.png",
                            width: _screenWidth * 0.12,
                            height: _screenHeight * 0.05,
                          ),
                          Expanded(
                            child: Text(
                              "Dashboard",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Constants.mainColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.85,
                              ),
                            ),
                          ),
                          SizedBox(width: _screenWidth * 0.02),
                        ],
                      ),
                    ),
                    SizedBox(height: _screenHeight * 0.02),
                    CircleAvatar(
                      radius: _screenWidth * 0.08,
                      backgroundImage: NetworkImage(
                        'https://source.unsplash.com/random/200x200?sig=1',
                      ),
                    ),
                    SizedBox(height: _screenHeight * 0.01),
                    Text(
                      "_member.getuser.memberId",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.8,
                      ),
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 18.5,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.8,
                      ),
                    ),
                    SizedBox(height: _screenHeight * 0.01),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1.5,
                      height: _screenHeight * 0.01,
                      indent: _screenWidth * 0.03,
                      endIndent: _screenWidth * 0.03,
                    ),
                    // SizedBox(height: _screenHeight * 0.005),
                    Container(
                      // color: Colors.blue,
                      height: _screenHeight * 0.55,
                      padding: EdgeInsets.symmetric(
                          horizontal: _screenWidth * 0.035),
                      child: ListView(
                        children: [
                          drawerItem("Make Payments", CupertinoIcons.creditcard,
                              () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Container(),
                              ),
                            );
                          }),

                          // drawerItem("Logout", CupertinoIcons.power, () {
                          //   Navigator.pushAndRemoveUntil(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (_) => LoginScreen(),
                          //     ),
                          //     (route) => false,
                          //   );
                          // }),
                          // SizedBox(height: _screenHeight * 0.01),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(),
                drawerItem("Logout", CupertinoIcons.power, () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Container(),
                    ),
                    (route) => false,
                  );
                }),
                SizedBox(height: _screenHeight * 0.035),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
