import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (event, pieTouchResponse) {
            touchIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          }),
      sections: [
        PieChartSectionData(
          color: const Color(0xff208CC8),
          value: 40,
          showTitle: false,
          radius: touchIndex == 0 ? 70 : 50,
        ),
        PieChartSectionData(
          color: const Color(0xff4EB7F2),
          value: 25,
          showTitle: false,
          radius: touchIndex == 1 ? 70 : 50,
        ),
        PieChartSectionData(
          color: const Color(0xff064061),
          value: 20,
          showTitle: false,
          radius: touchIndex == 2 ? 70 : 50,
        ),
        PieChartSectionData(
          color: const Color(0xffE2DECD),
          value: 22,
          showTitle: false,
          radius: touchIndex == 3 ? 70 : 50,
        ),
      ],
    );
  }
}
