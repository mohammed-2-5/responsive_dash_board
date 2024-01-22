import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/widgets/dot_container.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) => const Padding(
        padding: EdgeInsets.only(right: 6),
        child: DotContainer(isActive: false),
      )),
    );
  }
}
