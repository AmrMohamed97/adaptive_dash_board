import 'package:flutter/material.dart';
 import 'package:responsive_dash_board/utils/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/views/widgets/active_all_expenses_item.dart';
import 'package:responsive_dash_board/views/widgets/in_active_all_expenses_item.dart';
 
class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesModel, required this.isActive});
  final AllExpensesItemModel allExpensesModel;
  final bool isActive ;
  @override
  Widget build(BuildContext context) {
    return isActive?ActiveAllExpensesItem(allExpensesModel: allExpensesModel):InActiveAllExpensesItem(allExpensesModel: allExpensesModel);
  }
}
