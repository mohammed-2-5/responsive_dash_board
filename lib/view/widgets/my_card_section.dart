import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_styles.dart';
import 'package:responsive_dash_board/view/widgets/CustomBackGroundContainer.dart';
import 'package:responsive_dash_board/view/widgets/my_cards_page_view.dart';

import 'trnsaction_history.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({Key? key}) : super(key: key);

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        padding: 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text('My card', style: Styles.semiBoldStyle20(context)),
            const SizedBox(
              height: 20,
            ),
            MyCardsPageView(
              pageController: pageController,
            ),
            const SizedBox(
              height: 16,
            ),
            DotsIndicator(
              dotsCount: 3,
              position: currentPage,
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(32.0, 9.0),
                color: const Color(0xFFE7E7E7),
                activeColor: const Color(0xFF4DB7F2),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            const Divider(
              height: 48,
            ),
            const TransactionHistory(),
          ],
        ));
  }
}
