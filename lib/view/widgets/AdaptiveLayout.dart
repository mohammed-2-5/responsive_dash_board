import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({Key? key, required this.mobileLayout, required this.desktopLayout, required this.tabletLayout}) : super(key: key);

  final WidgetBuilder mobileLayout,desktopLayout,tabletLayout;
  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.deskTOP) {
          if (kDebugMode) {
            print(constraints.maxWidth);
          }

          return tabletLayout(context);
        }else{
          if (kDebugMode) {
            print(constraints.maxWidth);
          }
          return desktopLayout(context);
        }
      },
    );
  }
}
