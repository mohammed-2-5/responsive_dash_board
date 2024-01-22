import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_styles.dart';
import 'package:responsive_dash_board/models/transacrion_history_model.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem(
      {Key? key, required this.transactionHistoryModel})
      : super(key: key);
  final TransactionHistoryModel transactionHistoryModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
        color:const  Color(0xffFAFAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(
            transactionHistoryModel.title,
            style: Styles.semiBoldStyle16(context)
          ),
          subtitle: Text(transactionHistoryModel.date, style: Styles.regularStyle16(context).copyWith(color: const Color(0xFFAAAAAA))),
          trailing: Text(transactionHistoryModel.amount,style: Styles.semiBoldStyle20(context).copyWith(color: transactionHistoryModel.isWithdrawal?const Color(0xFFF3735E): const Color(0xFF7CD87A),),)
        ));
  }
}
