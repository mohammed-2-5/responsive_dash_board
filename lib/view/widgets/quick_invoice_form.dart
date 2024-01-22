import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/title_text_field.dart';

import 'CustomButton.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'title', hint:'')),
            SizedBox(width: 16,),
            Expanded(child: TitleTextField(title: 'title', hint:'')),

          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'title', hint:'')),
            SizedBox(width: 16,),
            Expanded(child: TitleTextField(title: 'title', hint:'')),

          ],
        ),
        SizedBox(height: 24,),
       Row(
         children: [
           Expanded(
             child: CustomButton(color: Colors.white, title: 'Add More Details', titleColor:  Color(0xFF4DB7F2),),
           ),
           SizedBox(height: 24,),
           Expanded(child: CustomButton(color: Color(0xFF4DB7F2),title: 'Add More Details', titleColor: Colors.white,))
         ],
       )
      ],
    );
  }
}

