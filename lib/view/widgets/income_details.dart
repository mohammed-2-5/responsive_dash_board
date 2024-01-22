import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/income_details_item.dart';

import '../../models/item_details_model.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({Key? key}) : super(key: key);
 static const  List<ItemDetailsModel> itemDetails = [
    ItemDetailsModel(name: 'Design service', percentage:" 40.0", color: Colors.blue),
    ItemDetailsModel(name: 'Design product', percentage: "25.0", color: Colors.lightBlue),
    ItemDetailsModel(name: 'Product royalty', percentage:" 20.0", color: Colors.blueAccent),
    ItemDetailsModel(name: 'Other', percentage:" 22.0", color: Colors.indigo),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: itemDetails.map((e) => IncomeDetailsItem(itemDetailsModel: e)).toList()
    );

  }
}
