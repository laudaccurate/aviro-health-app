// @dart=2.9

import 'package:aviro_health_app/screens/landingPage.dart';
import 'package:aviro_health_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    // final globals = Provider.of<Globals>(context);

    return Layout(
      screen: ListView(
        padding: EdgeInsets.symmetric(horizontal: _width * 0.032),
        children: [
          SizedBox(height: _height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VitalsCard(
                label: 'Blood Sugar',
                icon: Icons.timer_outlined,
                percentage: "6.5%",
                description: "HbA1c Level  - 0.2%",
              ),
              VitalsCard(
                label: 'Heart Rate',
                icon: Icons.monitor_heart_rounded,
                percentage: "140 bpm",
                description: "Heart rate + 20pbm",
              ),
              VitalsCard(
                label: 'Weight',
                icon: Icons.balance_rounded,
                percentage: "70 kilogram",
                description: "You - 10kg this week",
              ),
              VitalsCard(
                label: 'Blood Sugar',
                icon: Icons.timer_outlined,
                percentage: "6.5%",
                description: "HbA1c Level  - 0.2%",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class VitalsCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final String description;
  final String percentage;
  const VitalsCard(
      {Key key, this.icon, this.label, this.description, this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Container(
      width: _width * 0.17,
      height: _height * 0.15,
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Constants.sidebarColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Icon(icon, color: Colors.white, size: 20),
              ),
            ),
            SizedBox(width: 6),
            Text(
              label,
              style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Constants.sidebarColor),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.more_vert,
                    color: Constants.sidebarColor,
                    size: 22,
                  ),
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
