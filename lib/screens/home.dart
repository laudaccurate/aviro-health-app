// @dart=2.9

import 'package:aviro_health_app/screens/landingPage.dart';
import 'package:aviro_health_app/utils/constants.dart';
import 'package:aviro_health_app/widgets/mini_chart.dart';
import 'package:aviro_health_app/widgets/tabs.dart';
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
                color: 'A',
              ),
              VitalsCard(
                label: 'Heart Rate',
                icon: CupertinoIcons.heart,
                percentage: "140 bpm",
                description: "Heart rate + 20pbm",
                color: 'B',
              ),
              VitalsCard(
                label: 'Weight',
                icon: Icons.scale,
                percentage: "70 kilogram",
                description: "You - 10kg this week",
                color: 'C',
              ),
              VitalsCard(
                label: 'Body Fat',
                icon: CupertinoIcons.lab_flask,
                percentage: "6.5%",
                description: "HbA1c Level  - 0.2%",
                color: 'D',
              ),
            ],
          ),
          SizedBox(height: _height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  // width: _width * 0.45,
                  margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  height: _height * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        Text(
                          'Body Fat',
                          style: GoogleFonts.comfortaa(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            DefaultTabController(
                              length: 2,
                              child: CustomTabs(
                                index: (val) {},
                                tabs: <Tab>[
                                  const Tab(text: 'Monthly'),
                                  const Tab(text: 'Yearly'),
                                ],
                              ),
                            ), SizedBox(width: 15),
                            Icon(Icons.more_vert_outlined, size: 26, color: Constants.sidebarColor,)
                          ],
                        ))
                      ],
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: BigChart(color: 'D',kpiCOde: 'D',),
                    ))
                  ]),
                ),
              ),
              SizedBox(width: _width * 0.025),
              Container(
                margin: EdgeInsets.only(right: 15),
                width: _width * 0.17,
                height: _height * 0.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: _height * 0.025),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  // width: _width * 0.45,
                  margin: EdgeInsets.only(left: 20),
                  height: _height * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
              ),
              SizedBox(width: _width * 0.025),
              Container(
                margin: EdgeInsets.only(right: 15),
                width: _width * 0.17,
                height: _height * 0.25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
            ],
          ),
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
  final String color;
  const VitalsCard(
      {Key key,
      this.icon,
      this.label,
      this.description,
      this.percentage,
      this.color})
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
      child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                SizedBox(width: 10),
                Text(
                  label,
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Constants.sidebarColor,
                  ),
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
            ),
            SizedBox(height: 5),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    percentage,
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Constants.sidebarColor,
                    ),
                  ),
                  MiniChart(color: color, kpiCOde: color),
                ],
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.grey[200],
                  child: Center(
                    child: Icon(
                      CupertinoIcons.chevron_up,
                      color: Colors.green,
                      size: 12,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  description,
                  style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
