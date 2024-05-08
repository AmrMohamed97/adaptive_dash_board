import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/model/drawer_item_model.dart';
import 'package:responsive_dash_board/views/widgets/active_item.dart';
import 'package:responsive_dash_board/views/widgets/in_active_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.active});
  final DrawerItemModel drawerItemModel;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return active
        ? ActiveItem(drawerItemModel: drawerItemModel)
        : InActiveItem(drawerItemModel: drawerItemModel);
  }
}
