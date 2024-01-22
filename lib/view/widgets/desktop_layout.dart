import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/all_expenses_and_quick_invoice_widget.dart';
import 'package:responsive_dash_board/view/widgets/custom_drawer.dart';

import 'CardAndIncomeSection.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(

          flex: 3,
          child:CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child:  Row(
                  children: [
                    Expanded(flex: 2, child: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: AllExpensesAndQuickInvoiceWidget(),
                    )),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: CardAndIncomeSection(),
                        ))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

