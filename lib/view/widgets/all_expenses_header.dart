import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/font_styles.dart';
import 'package:responsive_dash_board/core/utils/images_assets.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({Key? key, required this.title}) : super(key: key);
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(title,style: Styles.semiBoldStyle20(context),),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),

          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child:  Row(
            children: [
               Text(
                  'Monthly',
                  style: Styles.mediumStyle16(context)
              ),
              const SizedBox(width: 18,),
              SvgPicture.asset(AssetImages.arrowDown)
            ],
          )
        )
      ],
    );
  }
}
