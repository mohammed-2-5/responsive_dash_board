import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint}) : super(key: key);
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        hintText: hint,
        hintStyle: Styles.regularStyle16(context).copyWith(color: const Color(0xFFAAAAAA),),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color(0xFFFAFAFA),
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color(0xFFFAFAFA),
            )
        )

      ),
    );
  }
}
