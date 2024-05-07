import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transaction.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          MyCardAndTransactionHistory(),
          IncomeSection(),
        ],
      ),
    );
  }
}
