import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_styles.dart';

import 'transaction_history_header.dart';
import 'transaction_history_list_items.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text('13 April 2022',
            style:
            Styles.semiBoldStyle16(context).copyWith(color: Color(0xFFAAAAAA))),
        const SizedBox(height: 16,),
        TransactionHistoryListItems(),
      ],
    );
  }
}
