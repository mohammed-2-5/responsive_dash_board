import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/CustomBackGroundContainer.dart';
import 'package:responsive_dash_board/view/widgets/all_expenses_header.dart';

import 'income_section_body.dart';

class InComeSection extends StatelessWidget {
  const InComeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(child: Column(

      children: [
        AllExpensesHeader(title: 'Income',),
        SizedBox(height: 20,),
        IncomeSectionBody()
      ],
    ));
  }
}
