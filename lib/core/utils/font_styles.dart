
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';

abstract class Styles{


  static TextStyle  regularStyle16(BuildContext context){
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsive(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle mediumStyle16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsive(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle mediumStyle20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsive(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiBoldStyle16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsive(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle boldStyle16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsive(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle semiBoldStyle20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsive(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle regularStyle12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsive(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle semiBoldStyle24(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4DB7F2),
      fontSize: getResponsive(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle regularStyle14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFAFAFA),
      fontSize: getResponsive(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle semiBoldStyle18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4DB7F2),
      fontSize: getResponsive(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

}
double getResponsive(BuildContext context,{required double fontSize}){
  double scaleFactor=getScaleFactor(context);
  double responsiveFontSize=fontSize*scaleFactor;
  double lowerLimit=fontSize*0.8;
  double upperLimit=fontSize*1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}


double getScaleFactor(BuildContext context){
  // var dispatcher=PlatformDispatcher.instance;
  // var physicalWidth=dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio=dispatcher.views.first.devicePixelRatio;
  // double width=physicalWidth/devicePixelRatio;
double width=MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width/550;
  } else if (width < SizeConfig.deskTOP) {
    return width/1000;
  }else{
    return width/1900;
  }
}