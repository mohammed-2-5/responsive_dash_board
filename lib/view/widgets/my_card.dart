import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/images_assets.dart';

import '../../core/utils/font_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(color: const Color(0xFF4EB7F2),
          image: const DecorationImage(image: AssetImage(AssetImages.maskGroup)),
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end ,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 31,right: 42,top: 16),
              title:  Text(
                  'Name card',
                  style: Styles.regularStyle16(context).copyWith(color: Colors.white),
              ),
              subtitle:  Text(
                  'Syah Bandi',
                  style: Styles.mediumStyle20(context)
              ),
              trailing: SvgPicture.asset(AssetImages.imageLogo),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                      '0918 8124 0042 8129',

                      style: Styles.semiBoldStyle24(context).copyWith(color: Colors.white)
                  ),
                  //const SizedBox(height: 12,),
                  Text(

                      '12/20 - 124',
                      style: Styles.regularStyle16(context).copyWith(color: Colors.white)
                  )
                ],
              ),
            ),
            const Flexible(child: SizedBox(height: 26,))
          ],
        ),
      ),
    );
  }
}
