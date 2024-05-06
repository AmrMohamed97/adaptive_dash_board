import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/assets_images.dart';
import 'package:responsive_dash_board/utils/model/drawer_item_model.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({
    super.key,
  });

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  int active = 0;
  final List<DrawerItemModel> drawerItemModel = const [
    DrawerItemModel(
      imagePath: Assets.imagesDashboard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      imagePath: Assets.imagesMyTransaction,
      title: 'My Transaction',
    ),
    DrawerItemModel(
      imagePath: Assets.imagesStatistic,
      title: 'Statistics',
    ),
    DrawerItemModel(
      imagePath: Assets.imagesWalletAccount,
      title: 'Wallet Accountb',
    ),
    DrawerItemModel(
      imagePath: Assets.imagesMyInvestments,
      title: 'My Investments',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItemModel.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (active != index) {
            setState(() {
              active = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(
            active: index == active,
            drawerItemModel: drawerItemModel[index],
          ),
        ),
      ),
    );
  }
}
