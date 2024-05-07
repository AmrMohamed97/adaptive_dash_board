import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/assets_images.dart';
import 'package:responsive_dash_board/utils/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/model/list_tile_model.dart';
import 'package:responsive_dash_board/utils/widgets/user_info_list_tile.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer_list_view.dart';
import 'package:responsive_dash_board/views/widgets/in_active_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, required this.listTileData});
  final ListTileModel listTileData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Card(
              elevation: 0,
              child: UserInfoListTile(listTileData: listTileData),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const CustomDrawerListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveItem(
                    drawerItemModel: DrawerItemModel(
                        imagePath: Assets.imagesSettingSystem,
                        title: 'Setting system')),
                InActiveItem(
                    drawerItemModel: DrawerItemModel(
                        imagePath: Assets.imagesLogout,
                        title: 'Logout account')),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
