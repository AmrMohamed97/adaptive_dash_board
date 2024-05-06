import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/utils/assets_images.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(),
          image: DecorationImage(
            image: AssetImage(Assets.imagesMyCard),
            fit: BoxFit.fill,
          ),
          color: Color(0xff4EB7F2),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            contentPadding: const EdgeInsets.only(left: 31, right: 42, top: 16),
            title: Text(
              'Name card',
              style: AppStyles.styleRegular16.copyWith(color: Colors.white),
            ),
            subtitle: Text(
              'Syah Bandi',
              style: AppStyles.styleMedium20.copyWith(color: Colors.white),
            ),
            trailing: SvgPicture.asset(Assets.imagesMyCardIcon),
          ),
          const Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '0918 8124 0042 8129',
                  style:
                      AppStyles.styleSemiBold24.copyWith(color: Colors.white),
                ),
                Text(
                  '12/20 - 124',
                  style: AppStyles.styleRegular16.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 26),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
