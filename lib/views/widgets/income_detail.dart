import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/model/income_model.dart';
import 'package:responsive_dash_board/views/widgets/income_item_detail.dart';

class IncomeDetail extends StatelessWidget {
  const IncomeDetail({super.key});
  static const List<IncomeModel> incomeList = [
    IncomeModel(
      title: 'Design service',
      amount: '40%',
      color: Color(0xff208CC8),
    ),
    IncomeModel(
      title: 'Design product',
      amount: '25%',
      color: Color(0xff4EB7F2),
    ),
    IncomeModel(
      title: 'Product royalti',
      amount: '20%',
      color: Color(0xff064061),
    ),
    IncomeModel(
      title: 'Other',
      amount: '22%',
      color: Color(0xffE2DECD),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: ((context, index) =>
          IncomeItemDetail(model: incomeList[index])),
      itemCount: incomeList.length,
    );
  }
}
