import 'package:flutter/material.dart';

import 'in_come_section.dart';
import 'my_card_section.dart';

class CardAndIncomeSection extends StatelessWidget {
  const CardAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        MyCardSection(),
        SizedBox(
          height: 24,
        ),
     Expanded(child: InComeSection()),
      ],
    );
  }
}
