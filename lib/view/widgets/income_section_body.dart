import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/IncomChartModify.dart';

import '../../core/utils/size_config.dart';
import 'income_chart.dart';
import 'income_details.dart';


class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return  width>= SizeConfig.deskTOP &&width <1750? const  Expanded(child: IncomeChartModify()):const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        SizedBox(width: 25,),
        Expanded(flex:2,child: IncomeDetails())
      ],
    );
  }
}
