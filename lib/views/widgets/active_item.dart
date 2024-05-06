import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/utils/model/drawer_item_model.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.imagePath),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleBold16.copyWith(color: const Color(0xff4EB7F2)),
      ),
      trailing: Container(
        width: 3.27,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
