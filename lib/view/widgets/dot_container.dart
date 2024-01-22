import 'package:flutter/material.dart';

class DotContainer extends StatelessWidget {
  const DotContainer({Key? key, required this.isActive}) : super(key: key);

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: isActive?32:8,
      height: 8,
      decoration: ShapeDecoration(
        color: isActive?const Color(0xFF4DB7F2): const Color(0xFFE7E7E7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
