import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/utils/model/income_model.dart';

class IncomeItemDetail extends StatelessWidget {
  const IncomeItemDetail({super.key, required this.model});
  final IncomeModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: model.color,
        ),
      ),
      title: Text(model.title,
        style:   AppStyles.styleRegular16(context),
      ),
      trailing:Text(model.amount,
        style: AppStyles.styleMedium16(context).copyWith(
          color:const  Color(0xff208CC8)
        ),
      ),
    );
  }
}