
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/font_styles.dart';
import '../../core/utils/images_assets.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
            'Quick Invoice',
            style: Styles.semiBoldStyle20(context)
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(AssetImages.add),
        ),
      ],
    );
  }
}