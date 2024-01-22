import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/font_styles.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    Key? key,
    required this.userInfoModel,
  }) : super(key: key);

  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: FittedBox(
              alignment: AlignmentDirectional.centerStart,
              fit: BoxFit.scaleDown,
              child: Text(
                userInfoModel.title,
                style: Styles.semiBoldStyle16(context),
              )),
          subtitle: FittedBox(
              alignment: AlignmentDirectional.centerStart,
              fit: BoxFit.scaleDown,
              child: Text(
                userInfoModel.subTitle,
                style: Styles.regularStyle12(context),
              )),
        ),
      ),
    );
  }
}
