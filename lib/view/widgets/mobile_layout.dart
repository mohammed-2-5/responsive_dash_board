import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice_widget.dart';
import 'in_come_section.dart';
import 'my_card_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: Column(
      children: [
        AllExpensesAndQuickInvoiceWidget(),
        SizedBox(height: 24,),

        MyCardSection(),
        SizedBox(
          height: 24,
        ),
        InComeSection(),
      ],
    ));
  }
}
