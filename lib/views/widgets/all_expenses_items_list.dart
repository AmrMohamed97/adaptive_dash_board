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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = 0;
              });
            },
            child: AllExpensesItem(
              allExpensesModel: allExpensesItemList[0],
              isActive: selectedItem == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = 1;
              });
            },
            child: AllExpensesItem(
              allExpensesModel: allExpensesItemList[1],
              isActive: selectedItem == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = 2;
              });
            },
            child: AllExpensesItem(
              allExpensesModel: allExpensesItemList[2],
              isActive: selectedItem == 2,
            ),
          ),
        ),
      ],
    );
  }
}
