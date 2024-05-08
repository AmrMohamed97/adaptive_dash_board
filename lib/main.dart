import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dash_board_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const AdaptiveDashBoard(),
    ),
  );
}

class AdaptiveDashBoard extends StatelessWidget {
  const AdaptiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const DashBoardView(),
    );
  }
}
