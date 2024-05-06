import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/assets_images.dart';
import 'package:responsive_dash_board/utils/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';
 
class AllExpensesItemsList extends StatefulWidget {
  const AllExpensesItemsList({super.key});

  @override
  State<AllExpensesItemsList> createState() => _AllExpensesItemsListState();
}

class _AllExpensesItemsListState extends State<AllExpensesItemsList> {
  final List<AllExpensesItemModel> allExpensesItemList = const [
    AllExpensesItemModel(
      icon: Assets.imagesBalance,
      date: 'April 2022',
      price: r'$20,129',
      title: 'Balance',
    ),
    AllExpensesItemModel(
      icon: Assets.imagesIncome,
      date: 'April 2022',
      price: r'$20,129',
      title: 'Income',
    ),
    AllExpensesItemModel(
      icon: Assets.imagesExpenses,
      date: 'April 2022',
      price: r'$20,129',
      title: 'Expenses',
    ),
  ];
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: allExpensesItemList.asMap().entries.map((e) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = e.key;
              });
            },
            child: Padding(
              padding: e.key == 1
                  ? const EdgeInsets.symmetric(horizontal: 12)
                  : EdgeInsets.zero,
              child: AllExpensesItem(
                allExpensesModel: e.value,
                isActive: !(selectedItem == e.key),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
