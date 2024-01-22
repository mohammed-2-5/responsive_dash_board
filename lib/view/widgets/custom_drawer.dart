import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/images_assets.dart';
import 'package:responsive_dash_board/models/drawer_items_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/view/widgets/drawer_item.dart';

import 'DrawerItemsListView.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: UserInfoListTile(
            userInfoModel: UserInfoModel( title: 'Lekan Okeowo', subTitle: 'demo@gmail.com', image: AssetImages.avatar1,),


           )),
          SliverToBoxAdapter(child: SizedBox(height: 8,)),
          DrawerItemsListView(),
         SliverFillRemaining(
           hasScrollBody: false,
           child: Column(
             children: [
               Expanded(child: SizedBox(height:
                 20,)),
               DrawerItem(drawerModel: DrawerModel(title: 'Setting system', image: AssetImages.setting2),isActive: false,),
               DrawerItem(drawerModel: DrawerModel(title: 'Logout account', image: AssetImages.logout),isActive: false,),
           SizedBox(height: 48,)
             ],
           ),
         )
        ],
      ),
    );
  }
}

