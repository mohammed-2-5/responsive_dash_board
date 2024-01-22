import 'package:flutter/material.dart';

import 'all _expenses_widget.dart';
import 'quick_invoice_widget.dart';

class AllExpensesAndQuickInvoiceWidget extends StatelessWidget {
  const AllExpensesAndQuickInvoiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensesWidget(),
        SizedBox(height: 24,),
        QuickInvoiceWidget()
      ],
    );
  }
}
