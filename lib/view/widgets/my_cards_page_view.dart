import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({Key? key, required this.pageController}) : super(key: key);
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        scrollDirection: Axis.horizontal,
controller: pageController,

        children: List.generate(3, (index) => const MyCard()));
  }
}
