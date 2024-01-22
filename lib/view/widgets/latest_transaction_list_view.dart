import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/images_assets.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/view/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({Key? key}) : super(key: key);


  static const List<UserInfoModel> items=[
    UserInfoModel(image: AssetImages.avatar1, title: 'Madrani Andi', subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(image: AssetImages.avatar2, title: 'Madrani Andi', subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(image: AssetImages.avatar1, title: 'Madrani Andi', subTitle: 'Madraniadi20@gmail'),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    
    height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
      
        itemBuilder: (context, index) {
          return IntrinsicWidth(child: UserInfoListTile(userInfoModel: items[index],));
        },
      
      
      
      ),
    );
  }
}
