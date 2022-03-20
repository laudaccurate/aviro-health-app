import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class CustomTabs extends StatefulWidget {
  final List<Tab> tabs;
  final Function(int) index;
  CustomTabs({Key? key, required this.tabs, required this.index})
      : super(key: key);

  @override
  _CustomTabsState createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabs> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: widget.tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
        height: 35,
        width: _width * 0.12,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: TabBar(
            onTap: (val) {
              widget.index(val);
            },
            labelColor: Colors.black45,
            labelStyle: GoogleFonts.comfortaa(fontWeight: FontWeight.w600, fontSize: 12),
            unselectedLabelColor: Colors.grey[600],
            indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: const Offset(4, 4),
                  blurRadius: 30,
                  spreadRadius: 0.01,
                ),
              ],
            ),
            tabs: widget.tabs,
          ),
        ));
  }
}
