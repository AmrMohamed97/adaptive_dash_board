import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.titleColor,
      this.backgroundColor,
      required this.title,
      this.onPressed});
  final Color? titleColor, backgroundColor;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onPressed ?? () {},
      child: Text(
        title,
        style: AppStyles.styleSemiBold18(context).copyWith(
          color: titleColor,
        ),
      ),
    );
  }
}
