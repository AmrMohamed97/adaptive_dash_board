import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: const Color(0xffF1F1F1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Row(children: [
        Text(
          'Monthly',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(width: 18),
        Icon(
          Icons.keyboard_arrow_down_sharp,
        ),
      ]),
    );
  }
}
