import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_styles.dart';


class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
            'Transaction History',
            style: Styles.semiBoldStyle20(context)
        ),
        const Spacer(),
        Text(
          'See all',
          style: Styles.semiBoldStyle16(context).copyWith(color: const Color(0xFF4EB7F2)),
        )
      ],
    );
  }
}
