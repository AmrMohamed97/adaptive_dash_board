import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/model/all_expenses_item_model.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.allExpensesModel,
    this.color,
    this.backgroundColor,
  });

  final AllExpensesItemModel allExpensesModel;
  final Color? color, backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                  decoration: ShapeDecoration(
                    color: backgroundColor ?? const Color(0xffFAFAFA),
                    shape: const OvalBorder(),
                  ),
                  child: Center(
                      child: SvgPicture.asset(
                    allExpensesModel.icon,
                    colorFilter: ColorFilter.mode(
                      color ?? const Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ))),
            ),
          ),
        ),
        Transform.rotate(
          angle: -1.57079633,
          child: Icon(
            Icons.keyboard_arrow_down_sharp,
            color: color,
          ),
        ),
      ],
    );
  }
}
