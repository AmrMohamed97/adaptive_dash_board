import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/assets_images.dart';
import 'package:responsive_dash_board/utils/model/list_tile_model.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/desktop_layout.dart';
import 'package:responsive_dash_board/views/widgets/mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFFF7F9FA),
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: const Color(0xffFAFAFA),
              leading: IconButton(
                  onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                  icon: const Icon(Icons.menu)),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < 800
          ? const CustomDrawer(
              listTileData: ListTileModel(
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
                imagePath: Assets.imagesLekan,
              ),
            )
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
