import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'bar_data.dart';
class MyBarGraph extends StatelessWidget {
  final List weeklySummary;
  const MyBarGraph({Key? key,required this.weeklySummary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   BarData myBarData = BarData(
       sunAmount: weeklySummary[0],
       monAmount: weeklySummary[1],
       friAmount: weeklySummary[2],
       satAmount: weeklySummary[3],
       thurAmount: weeklySummary[4],
       tueAmount: weeklySummary[5],
       wedAmount:weeklySummary[6]);

   myBarData.initializeBarData();

    return BarChart(
      BarChartData(
        maxY: 150,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          show: true,
        topTitles: AxisTitles(sideTitles: SideTitles(
            showTitles: false
        )),
          leftTitles: AxisTitles(sideTitles: SideTitles(
              showTitles: false
          )),
          rightTitles: AxisTitles(sideTitles: SideTitles(
              showTitles: false
          )),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,getTitlesWidget: getBottomTiels))
        ),
        barGroups: myBarData.barData.map((data) =>
            BarChartGroupData(
                x: data.x,
              barRods:[
                BarChartRodData(
                    toY: data.y,
                  color: Color.fromRGBO(255, 87, 87,30),
                  width: 18,
                  borderRadius: BorderRadius.circular(20),
                  backDrawRodData: BackgroundBarChartRodData(
                    show: true,
                    toY: 100,
                    color: Colors.grey.withOpacity(0.2)
                  )
                ),
              ],
            ),
        ).toList()
      ),
    );

  }
}
Widget getBottomTiels(double value, TitleMeta meta){
  const style = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  Widget text;
  switch (value.toInt()){
    case 0:
      text = const Text('S',style: style,);
      break;
    case 1:
      text = const Text('M',style: style,);
      break;
    case 2:
      text = const Text('T',style: style,);
      break;
    case 3:
      text = const Text('W',style: style,);
      break;
    case 4:
      text = const Text('T',style: style,);
      break;
    case 5:
      text = const Text('F',style: style,);
      break;
    case 6:
      text = const Text('S',style: style,);
      break;
    default:
      text = const Text('',style: style,);
      break;
  }
  return SideTitleWidget(child: text,axisSide: meta.axisSide);
}
