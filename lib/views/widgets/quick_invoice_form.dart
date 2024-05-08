import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/widgets/custom_button.dart';
import 'package:responsive_dash_board/views/widgets/titled_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitledTextField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitledTextField(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitledTextField(
                title: 'Item name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitledTextField(
                title: 'Item mount',
                hint: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              title: 'Add more details',
              backgroundColor: Colors.white,
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomButton(
              title: 'Send Money',
              titleColor: Colors.white,
            ))
          ],
        ),
      ],
    );
  }
}
