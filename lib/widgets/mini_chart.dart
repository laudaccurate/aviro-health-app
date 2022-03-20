// @dart=2.9

import 'package:aviro_health_app/providers/globals.dart';
import 'package:aviro_health_app/utils/util.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MiniChart extends StatefulWidget {
  final String color;
  final String kpiCOde;

  const MiniChart({
    Key key,
    this.color,
    this.kpiCOde,
  }) : super(key: key);
  @override
  _MiniChartState createState() => _MiniChartState();
}

class _MiniChartState extends State<MiniChart> {
  Color chartColor;
  List<Color> gradientColors;

  @override
  void initState() {
    final def = Provider.of<Globals>(context, listen: false);

    gradientColors = Utilities.getGradientColor(widget.color);
    chartColor = Utilities.getColor(widget.color);
    
    super.initState();
  }

  // = [
  //   const Color(0xff23b6e6),
  //   const Color(0xff02d39a),
  // ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      height: _height * 0.05,
      width: _width * 0.06,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
        // color: Color(0xff232d37),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            right: 4.0, left: 2.0, top: 2, bottom: 2),
        child: LineChart(
          mainData(),
        ),
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: false,
        getDrawingHorizontalLine: (value) {
          return null;
        },
        getDrawingVerticalLine: (value) {
          return null;
        },
      ),
      titlesData: FlTitlesData(
        show: false,
        bottomTitles: SideTitles(
          showTitles: false,
          reservedSize: 12,
          getTextStyles: (context, value) => TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 5),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'Mon';
              case 5:
                return 'Tues';
              case 8:
                return 'Wed';
            }
            return '';
          },
          margin: 0,
        ),
        leftTitles: SideTitles(
          showTitles: false,
          getTextStyles: (context,value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 5,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 12,
          margin: 0,
        ),
      ),
      borderData: FlBorderData(
          show: false,
          border: Border.all(
            color: const Color(0xff37434d),
            width: 0,
          )),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 5.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }
}

class BigChart extends StatefulWidget {
  final String color;
  final String kpiCOde;

  const BigChart({
    Key key,
    this.color,
    this.kpiCOde,
  }) : super(key: key);
  @override
  _BigChartState createState() => _BigChartState();
}

class _BigChartState extends State<BigChart> {
  Color chartColor;
  List<Color> gradientColors;

  @override
  void initState() {
    final def = Provider.of<Globals>(context, listen: false);

    gradientColors = Utilities.getGradientColor(widget.color);
    chartColor = Utilities.getColor(widget.color);
    
    super.initState();
  }

  // = [
  //   const Color(0xff23b6e6),
  //   const Color(0xff02d39a),
  // ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      // height: _height * 0.05,
      // width: _width * 0.06,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
        // color: Color(0xff232d37),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            right: 4.0, left: 2.0, top: 2, bottom: 2),
        child: LineChart(
          mainData(),
        ),
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 0.06,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 0.06,
          );
        },
      ),
      titlesData: FlTitlesData(
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 8,
          getTextStyles: (context, value) => TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 10),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'Mon';
              case 5:
                return 'Tues';
              case 8:
                return 'Wed';
            }
            return '';
          },
          margin: 0,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context,value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 8,
          margin: 0,
        ),
      ),
      borderData: FlBorderData(
          show: false,
          border: Border.all(
            color: const Color(0xff37434d),
            width: 0,
          )),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 5.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }
}