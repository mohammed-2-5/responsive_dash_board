import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transacrion_history_model.dart';
import 'package:responsive_dash_board/view/widgets/transaction_history_item.dart';

class TransactionHistoryListItems extends StatelessWidget {
   TransactionHistoryListItems({Key? key}) : super(key: key);
final List<TransactionHistoryModel> items=[
  TransactionHistoryModel(title: 'Cash Withdrawal', date: '13 Apr, 2022 ', amount: '\$20,129', isWithdrawal: true),
  TransactionHistoryModel(title: 'Landing Page project', date: '13 Apr, 2022 at 3:30 PM', amount: '\$2,000', isWithdrawal: false),
  TransactionHistoryModel(title: 'Juni Mobile App project', date: '13 Apr, 2022 at 3:30 PM', amount: '\$20,129', isWithdrawal: false),

];
  @override
  Widget build(BuildContext context) {

    return Column(
      children:items.map((e) => TransactionHistoryItem(transactionHistoryModel: e)).toList(),
    );

  }
}
