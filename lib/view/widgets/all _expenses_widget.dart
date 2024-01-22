import 'package:flutter/material.dart';

import 'package:responsive_dash_board/view/widgets/all_expenses_item_list_view.dart';

import 'CustomBackGroundContainer.dart';
import 'all_expenses_header.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  CustomBackGroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensesHeader(title: 'All Expenses'),
          SizedBox(height: 16),
          AllExpensesItemListView(),


        ],
      ),
    );
  }
}

