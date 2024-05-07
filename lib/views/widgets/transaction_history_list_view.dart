import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/transaction_item.dart';
import 'package:responsive_dash_board/views/widgets/transaction_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({
    super.key,
  });

  static const List<TransactionModel> transactionList = [
    TransactionModel(
      isWithdrawal: true,
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022 ',
      price: r'$20,129',
    ),
    TransactionModel(
      isWithdrawal: false,
      title: 'Landing Page project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      price: r'$2,000',
    ),
    TransactionModel(
      isWithdrawal: false,
      title: 'Juni Mobile App project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      price: r'$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionList.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
  }
}
