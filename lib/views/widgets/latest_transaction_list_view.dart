import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/assets_images.dart';
import 'package:responsive_dash_board/utils/model/list_tile_model.dart';
import 'package:responsive_dash_board/utils/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({
    super.key,
  });

  static const List<ListTileModel> transactionList = [
    ListTileModel(
      imagePath: Assets.imagesMadraniAndi,
      subtitle: 'Madraniadi20@gmail',
      title: 'Madrani Andi',
    ),
    ListTileModel(
      imagePath: Assets.imagesJosuaNunito,
      subtitle: 'Josh Nunito@gmail.com',
      title: 'Josua Nunito',
    ),
    ListTileModel(
      imagePath: Assets.imagesMadraniAndi,
      subtitle: 'Madraniadi20@gmail',
      title: 'Madrani Andi',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: transactionList.map((e) {
          return IntrinsicWidth(child: UserInfoListTile(listTileData: e));
        }).toList(),
      ),
    );
  }
}
