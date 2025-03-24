import 'package:e_wallet/components/barchart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatisticsScreen extends StatelessWidget {
  final List<BarChartGroupData> barGroups = [
    BarChartGroupData(x: 0, barRods: [
      BarChartRodData(toY: 10, width: 12, color: Colors.deepPurple),
      BarChartRodData(toY: 20, width: 12, color: Colors.black),
    ]),
    BarChartGroupData(x: 1, barRods: [
      BarChartRodData(toY: 20, width: 12, color: Colors.deepPurple),
      BarChartRodData(toY: 35, width: 12, color: Colors.black),
    ]),
    BarChartGroupData(x: 2, barRods: [
      BarChartRodData(toY: 20, width: 12, color: Colors.deepPurple),
      BarChartRodData(toY: 27, width: 12, color: Colors.black),
    ]),
    BarChartGroupData(x: 3, barRods: [
      BarChartRodData(toY: 5, width: 12, color: Colors.deepPurple),
      BarChartRodData(toY: 24, width: 12, color: Colors.black),
    ]),
    BarChartGroupData(x: 4, barRods: [
      BarChartRodData(toY: 6, width: 12, color: Colors.deepPurple),
      BarChartRodData(toY: 18, width: 12, color: Colors.black),
    ]),
    BarChartGroupData(x: 5, barRods: [
      BarChartRodData(toY: 15, width: 12, color: Colors.deepPurple),
      BarChartRodData(toY: 28, width: 12, color: Colors.black),
    ]),
  ];
  StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Statistics",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Total Balance",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "\$21,350.54",
                style: GoogleFonts.poppins(
                  fontSize: 34,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Overview",
                    style: GoogleFonts.poppins(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Month"),
                        Icon(Icons.arrow_drop_down_sharp),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              // chart
              AspectRatio(
                aspectRatio: 2.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: BarChartComponent(barGroups: barGroups),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      SizedBox(width: 6),
                      Text(
                        "Income",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        SizedBox(width: 6),
                        Text(
                          "Expenses",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('images/card-1.jpeg'),
                      ),
                      SizedBox(width: 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('images/card-2.jpeg'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('images/card-2.jpeg'),
                      ),
                      SizedBox(width: 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('images/card-1.jpeg'),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
