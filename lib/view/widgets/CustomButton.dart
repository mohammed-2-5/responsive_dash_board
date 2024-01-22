

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.color, required this.title, required this.titleColor,
  });
  final Color color;
  final String title;
  final Color titleColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(

        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor:color,
            elevation: 0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
        )
        ),
        child:Text(
            title,
            style: Styles.semiBoldStyle18(context).copyWith(color: titleColor)
        ) ,
      ),
    );
  }
}
