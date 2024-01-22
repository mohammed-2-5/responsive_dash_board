import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/font_styles.dart';
import 'package:responsive_dash_board/models/drawer_items_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key, required this.drawerModel,  this.isActive}) : super(key: key);
 final  bool? isActive ;
  final DrawerModel drawerModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: SvgPicture.asset(drawerModel.image,),

      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerModel.title,style:isActive!?Styles.boldStyle16(context): Styles.mediumStyle16(context),
        ),
      ),
      trailing:isActive!? Container(
        width: 3.27,
        height: 48,
        decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
      ):null,
    );
  }
}
