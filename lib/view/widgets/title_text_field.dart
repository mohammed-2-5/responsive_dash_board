import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_styles.dart';
import 'package:responsive_dash_board/view/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({Key? key, required this.title, required this.hint}) : super(key: key);

  final String title;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style:Styles.mediumStyle16(context),),
        const SizedBox(height: 12,),
         CustomTextField(hint: hint,)
      ],
    );
  }
}
