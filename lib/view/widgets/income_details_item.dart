import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_styles.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({Key? key, required this.itemDetailsModel}) : super(key: key);
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:const  EdgeInsets.all(0),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title:  Text(
        itemDetailsModel.name,
        style: Styles.regularStyle16(context)
      ),
      trailing:  Text(
        itemDetailsModel.percentage,
        style: Styles.semiBoldStyle16(context)
      ),
    );
  }
}
