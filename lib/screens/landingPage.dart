// @dart=2.9

import 'package:aviro_health_app/providers/globals.dart';
import 'package:aviro_health_app/utils/constants.dart';
import 'package:aviro_health_app/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flappy_search_bar_ns/flappy_search_bar_ns.dart';
import 'package:flappy_search_bar_ns/search_bar_style.dart';

class Layout extends StatefulWidget {
  final Widget screen;

  const Layout({Key key, this.screen}) : super(key: key);
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  // PersistentTabController _controller;
  int currentIndex = 0;

  var scaffoldKey = GlobalKey<ScaffoldState>();
  final SearchBarController<dynamic> _searchBarController =
      SearchBarController();
  bool isReplay = false;
  // List<LovModels> trans = [];
  Future<List<dynamic>> _getAlldata(String text) async {
    await Future.delayed(Duration(seconds: text.length == 1 ? 10 : 1));
    // final transData = Provider.of<Data>(context, listen: false);
    List<dynamic> searchtrans = [];
    for (var i = 0; i < [].length; i++) {
      if (
          // trans[i].dbAccName == text
          "widget.children[i].name"
              .contains(RegExp(text, caseSensitive: false))) {
        searchtrans.add("widget.children[i]");
      }
    }
    return searchtrans;
  }

  @override
  void initState() {
    // _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    final globals = Provider.of<Globals>(context);

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        // drawer: CustomDrawer(),
        body: Container(
          height: _height,
          width: _width,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Sidebar(),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: _width * 0.01,
                    vertical: _height * 0.015,
                  ),
                  color: Colors.grey.shade100,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(height: _height * 0.005),
                      Header(),
                      SizedBox(height: _height* 0.01),
                      Expanded(child: widget.screen)
                      
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key key,
    
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    final globals = Provider.of<Globals>(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(
            globals.getsidebarOpened
                ? CupertinoIcons.clear
                : CupertinoIcons.bars,
            color: Constants.sidebarColor,
          ),
          iconSize: 26.0,
          color: Constants.sidebarColor,
          onPressed: () => globals
              .setSidebarOpened(!globals.getsidebarOpened),
        ),
        SizedBox(width: _width * 0.02),
        Expanded(
          child: Container(
            width: _width * 0.3,
            padding: EdgeInsets.symmetric(
                horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(CupertinoIcons.search,
                    size: 20, color: Colors.grey[300]),
                SizedBox(width: 15),
                Text(
                  'What are you looking for',
                  style: GoogleFonts.comfortaa(
                      fontSize: 12, color: Colors.grey[300]),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: _width * 0.03),
        Icon(
          Icons.mark_email_unread,
          color: Constants.sidebarColor,
          size: 24,
        ),
        SizedBox(width: _width * 0.02),
        Icon(
          CupertinoIcons.bell_fill,
          color: Constants.sidebarColor,
          size: 24,
        ),
        SizedBox(width: _width * 0.02),
        Text(
          'Marvin McKinney',
          style: GoogleFonts.comfortaa(
            color: Colors.grey[500],
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        ),
        SizedBox(width: _width * 0.008),
        CircleAvatar(
          radius: _width * 0.011,
          backgroundImage: NetworkImage(
            'https://source.unsplash.com/random/200x200?sig=1',
          ),
        ),
      ],
    );
  }
}

class Sidebar extends StatelessWidget {
  const Sidebar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final globals = Provider.of<Globals>(context);
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      width: globals.getsidebarOpened ? _width * 0.14 : _width * 0.065,
      height: _height,
      decoration: BoxDecoration(color: Constants.sidebarColor),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: _height * 0.1),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(globals.getsidebarOpened ? 8 : 4),
            height: _height * (globals.getsidebarOpened ? 0.08 : 0.06),
            decoration: BoxDecoration(
             color: Colors.white  
            ),
            child: Image.asset("assets/images/logo.png", height: _height * 0.05),
          ),
          SizedBox(height: _height * 0.06),
          Constants.menus[0],
          SizedBox(height: _height * 0.03),
          Constants.menus[1],
          SizedBox(height: _height * 0.03),
          Constants.menus[2],
          SizedBox(height: _height * 0.02),
          Divider(color: Colors.grey[400], thickness: 0.7,),
          SizedBox(height: _height * 0.02),
          Constants.menus[3],
          SizedBox(height: _height * 0.03),
          Constants.menus[4],
          SizedBox(height: _height * 0.03),
        ],
      ),
    );
  }
}
