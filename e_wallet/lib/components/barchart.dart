import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarChartComponent extends StatelessWidget {
  final List<BarChartGroupData> barGroups;

  const BarChartComponent({super.key, required this.barGroups});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: 40,
        barTouchData: BarTouchData(enabled: false),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40, // to adjust spacing
              getTitlesWidget: (double value, TitleMeta meta) {
                switch (value.toInt()) {
                  case 0:
                    return Text.rich(TextSpan(
                        text: '0',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                              text: 'k',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ))
                        ]));
                  case 10:
                    return Text.rich(TextSpan(
                        text: '10',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                              text: 'k',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ))
                        ]));
                  case 20:
                    return Text.rich(TextSpan(
                        text: '20',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                              text: 'k',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ))
                        ]));
                  case 30:
                    return Text.rich(TextSpan(
                        text: '30',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                              text: 'k',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ))
                        ]));
                  case 40:
                    return Text.rich(TextSpan(
                        text: '40',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                              text: 'k',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ))
                        ]));
                  default:
                    return Text('');
                }
              },
            ),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (double value, TitleMeta meta) {
                switch (value.toInt()) {
                  case 0:
                    return Text(
                      'Jan',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    );
                  case 1:
                    return Text(
                      'Feb',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    );
                  case 2:
                    return Text(
                      'Mar',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    );
                  case 3:
                    return Text(
                      'Apr',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    );
                  case 4:
                    return Text(
                      'Jun',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    );
                  case 5:
                    return Text(
                      'Jul',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    );
                  default:
                    return Text('');
                }
              },
            ),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(show: false),
        barGroups: barGroups,
      ),
    );
  }
}
