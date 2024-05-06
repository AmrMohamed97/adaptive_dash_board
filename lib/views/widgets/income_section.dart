import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IncomeSectionHeader(),
        Expanded(
          child: Row(
            children: [
              Expanded(child: IncomeChart()),
            ],
          ),
        ),
      ],
    );
  }
}
