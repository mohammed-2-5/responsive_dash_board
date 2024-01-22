import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({Key? key}) : super(key: key);

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getPieChartData()),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
       // centerSpaceRadius: 55,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, response) {
            activeIndex = response!.touchedSection!.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(

            radius: activeIndex == 0 ? 40 : 30,
            value: 40,
            showTitle: false,
            color: const Color(0xFF208CC8),
          ),
          PieChartSectionData(
            radius: activeIndex == 1 ? 40 : 30,
            value: 25,
            showTitle: false,
            color: const Color(0xFF4DB7F2),
          ),
          PieChartSectionData(
            value: 20,
            radius: activeIndex == 2 ? 40 : 30,
            showTitle: false,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            value: 22,
            radius: activeIndex == 3 ? 40 : 30,
            showTitle: false,
            color: const Color(0xffE2DECD),
          )
        ]);
  }
}
