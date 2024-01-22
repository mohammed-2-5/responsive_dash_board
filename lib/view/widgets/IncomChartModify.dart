import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../core/utils/font_styles.dart';

class IncomeChartModify extends StatefulWidget {
  const IncomeChartModify({Key? key}) : super(key: key);

  @override
  State<IncomeChartModify> createState() => _IncomeChartModify();
}

class _IncomeChartModify extends State<IncomeChartModify> {
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
            titlePositionPercentageOffset: activeIndex == 0 ? 1.6 : null,
            title: activeIndex == 0 ? 'Design service' : '40%',
            titleStyle: Styles.mediumStyle16(context)
                .copyWith(color: activeIndex == 0 ? null : Colors.white),
            radius: activeIndex == 0 ? 40 : 30,
            value: 40,
            color: const Color(0xFF208BC7),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 2.7 : null,
            titleStyle: Styles.mediumStyle16(context)
                .copyWith(color: activeIndex == 1 ? null : Colors.white),
            title: activeIndex == 1 ? 'Design product' : '25%',
            value: 25,
            radius: activeIndex == 1 ? 40 : 30,
            color: const Color(0xFF4DB7F2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
            titleStyle: Styles.mediumStyle16(context)
                .copyWith(color: activeIndex == 2 ? null : Colors.white),
            title: activeIndex == 2 ? 'Product royalti' : '20%',
            value: 20,
            radius: activeIndex == 2 ? 40 : 30,
            color: const Color(0xFF064060),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
            titleStyle: Styles.mediumStyle16(context)
                .copyWith(color: activeIndex == 3 ? null : Colors.white),
            title: activeIndex == 3 ? 'Other' : '22%',
            value: 22,
            radius: activeIndex == 3 ? 40 : 30,
            color: const Color(0xFFE2DECD),
          ),
        ]);
  }
}
