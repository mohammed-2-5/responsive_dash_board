import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_styles.dart';

import 'latest_transaction_list_view.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style:Styles.mediumStyle16(context)
        ),
        const SizedBox(height: 16,),
        const LatestTransactionListView()
      ],
    );
  }
}
