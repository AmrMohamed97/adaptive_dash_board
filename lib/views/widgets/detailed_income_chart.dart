import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
          title: touchIndex == 0 ? 'Design service' : '40%',
          titlePositionPercentageOffset: touchIndex == 0 ? 1.38 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: touchIndex == 0 ? const Color(0xff208CC8) : Colors.white,
          ),
          radius: touchIndex == 0 ? 70 : 50,
        ),
        PieChartSectionData(
          color: const Color(0xff064061),
          value: 20,
          radius: touchIndex == 1 ? 70 : 50,
          titlePositionPercentageOffset: touchIndex == 1 ? 1.85 : null,
          title: touchIndex == 1 ? 'Product royalti' : '20%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: touchIndex == 1 ? const Color(0xff064061) : Colors.white,
          ),
        ),
        PieChartSectionData(
          color: const Color(0xff4EB7F2),
          value: 25,
          title: touchIndex == 2 ? 'Design product' : '25%',
          titlePositionPercentageOffset: touchIndex == 2 ? 1.4 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: touchIndex == 2 ? const Color(0xff4EB7F2) : Colors.white,
          ),
          radius: touchIndex == 2 ? 70 : 50,
        ),
        PieChartSectionData(
          color: const Color(0xffE2DECD),
          title: touchIndex == 3 ? 'other' : '22%',
          titlePositionPercentageOffset: touchIndex == 3 ? 1.35 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: touchIndex == 3 ? const Color(0xffE2DECD) : Colors.white,
          ),
          value: 22,
          radius: touchIndex == 3 ? 70 : 50,
        ),
      ],
    );
  }
}
