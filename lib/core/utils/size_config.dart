
import 'package:flutter/cupertino.dart';

class SizeConfig {
  static double deskTOP=1200;
  static double tablet=800;
  static late double width,height;

  static init(BuildContext context){
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
