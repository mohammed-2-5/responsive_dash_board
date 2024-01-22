import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/images_assets.dart';
import 'package:responsive_dash_board/view/widgets/all_expenses_item.dart';

import '../../models/all_expenses_model.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({Key? key}) : super(key: key);



  @override
  State<AllExpensesItemListView> createState() => _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesModel>  items=[
    const AllExpensesModel(image: AssetImages.moneys,
      title: 'Balance',
      date: 'April 2022',
      price: '\$20,129',),
    const AllExpensesModel(image: AssetImages.cardReceive,
      title: 'Expenses',
      date: 'April 2022',
      price: '\$20,129',),
    const AllExpensesModel(image: AssetImages.cardSend,
      title: 'Expense',
      date: 'April 2022',
      price: '\$20,129',),
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex=0;
              });
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 0,
              allExpensesModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex=1;
              });
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 1,
              allExpensesModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex=2;
              });
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 2,
              allExpensesModel: items[2],
            ),
          ),
        )
      ],
    );
  }
}
