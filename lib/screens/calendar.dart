// @dart=2.9
// ignore_for_file: missing_return

import 'package:aviro_health_app/screens/landingPage.dart';
import 'package:aviro_health_app/utils/constants.dart';
import 'package:aviro_health_app/widgets/barchart.dart';
import 'package:aviro_health_app/widgets/tabs.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Layout(
      screen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: _height * 0.75,
            width: _width * 0.55,
            margin: EdgeInsets.symmetric(
              horizontal: _width * 0.025,
              vertical: _height * 0.01,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: _width * 0.032,
              vertical: _height * 0.02,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Appointment',
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
                              const Tab(text: 'Week'),
                              const Tab(text: 'Month'),
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.more_vert_outlined,
                          size: 26,
                          color: Constants.sidebarColor,
                        )
                      ],
                    ))
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey[300],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(12),
                    child: SfCalendar(
                      cellEndPadding: 0,
                      view: CalendarView.week,
                      timeZone: 'Greenwich Merridean Time',
                      firstDayOfWeek: 7,
                      headerDateFormat: null,
                      showWeekNumber: false,
                      timeSlotViewSettings: TimeSlotViewSettings(
                        timeIntervalHeight: _height * 0.11,
                        timeIntervalWidth: _width * 0.045,
                        startHour: 6.0,
                        endHour: 11.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: _height * 0.75,
            width: _width * 0.22,
            margin: EdgeInsets.symmetric(
              horizontal: _width * 0.000,
              vertical: _height * 0.01,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: _width * 0.01,
              vertical: _height * 0.01,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              CalendarDatePicker(
                initialDate: DateTime(2020),
                firstDate: DateTime(1990),
                lastDate: DateTime(2030),
                onDateChanged: (date) {},
              ),
              SizedBox(height: 5),
              
              Expanded(
                child:BarChartSample1()
              )
            ]),
          )
        ],
      ),
    );
  }
}
