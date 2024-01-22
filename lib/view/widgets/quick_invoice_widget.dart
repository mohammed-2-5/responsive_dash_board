import 'package:flutter/material.dart';

import 'package:responsive_dash_board/view/widgets/CustomBackGroundContainer.dart';
import 'package:responsive_dash_board/view/widgets/latest_transaction_section.dart';

import 'QuickInvoiceHeader.dart';
import 'quick_invoice_form.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(child:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransactionSection(),
        Divider(
          height: 48,
        ),
        QuickInvoiceForm()
      ],
    ));
  }
}
