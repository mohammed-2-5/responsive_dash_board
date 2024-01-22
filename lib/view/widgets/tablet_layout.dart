import 'package:flutter/material.dart';

import 'package:responsive_dash_board/view/widgets/custom_drawer.dart';

import 'mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex:1,child: CustomDrawer()),

        Expanded(flex:2,child: Padding(
          padding:EdgeInsets.only(left: 24,right: 24,top: 40),
          child: MobileLayout(),
        ))
      ],
    );
  }
}

