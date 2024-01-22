import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_styles.dart';

import '../../models/all_expenses_model.dart';
import 'AllExpensesItemHeader.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {Key? key, required this.allExpensesModel, required this.isSelected})
      : super(key: key);
  final AllExpensesModel allExpensesModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration:const Duration(milliseconds: 600) ,
      curve: Curves.linear,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: isSelected ? const Color(0xFF4DB7F2) : Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(allExpensesModel: allExpensesModel, isSelected: isSelected),
          const SizedBox(
            height: 32,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.title,
              style: Styles.semiBoldStyle16(context).copyWith(
                  color: isSelected ? Colors.white : const Color(0xff064061)),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,

            child: Text(
              allExpensesModel.date,
              style: Styles.regularStyle14(context).copyWith(
                  color: isSelected
                      ? const Color(0xffFAFAFA)
                      : const Color(0xffAAAAAA)),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,

            child: Text(
              allExpensesModel.price,
              style: Styles.semiBoldStyle24(context).copyWith(
                  color: isSelected ? Colors.white : const Color(0xff4EB7F2)),
            ),
          )
        ],
      ),
    );
  }
}

