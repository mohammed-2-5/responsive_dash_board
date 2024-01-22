import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';
import 'package:responsive_dash_board/view/widgets/AdaptiveLayout.dart';
import 'package:responsive_dash_board/view/widgets/mobile_layout.dart';
import 'package:responsive_dash_board/view/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/view/widgets/tablet_layout.dart';

import '../widgets/desktop_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  GlobalKey<ScaffoldState> scaffoldKey=GlobalKey();
@override
  Widget build(BuildContext context) {
  SizeConfig.init(context);

    return Scaffold(
      key: scaffoldKey,
      drawer:  SizeConfig.width<SizeConfig.tablet? const CustomDrawer():null,
      appBar: SizeConfig.width<SizeConfig.tablet?AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFAFAFA),
        leading: IconButton(onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        }, icon: const Icon(Icons.menu)),
      ):null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const MobileLayout(),
        desktopLayout: (context) => const DesktopLayout(),
        tabletLayout: (context) => const TabletLayout(),
      ),
    );
  }
}
