import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/images_assets.dart';
import '../../models/all_expenses_model.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.allExpensesModel,
    required this.isSelected,
  });

  final AllExpensesModel allExpensesModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row (
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(

                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.10000000149011612),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    allExpensesModel.image,

                    colorFilter: ColorFilter.mode(
                        isSelected ? Colors.white : const Color(0xff4EB7F2),
                        BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        SvgPicture.asset(
          AssetImages.arrowRight,
          colorFilter: ColorFilter.mode(
              isSelected ? Colors.white : const Color(0xff064061),
              BlendMode.srcIn),
        )
      ],
    );
  }
}
