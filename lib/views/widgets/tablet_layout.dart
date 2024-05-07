import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/assets_images.dart';
import 'package:responsive_dash_board/utils/model/list_tile_model.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/mobile_layout.dart';
 
class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(
            listTileData: ListTileModel(
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
              imagePath: Assets.imagesLekan,
            ),
          ),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: MobileLayout(),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}

