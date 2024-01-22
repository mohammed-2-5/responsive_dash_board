import 'package:flutter/material.dart';

import '../../core/utils/images_assets.dart';
import '../../models/drawer_items_model.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,

  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerModel> items=[
    const DrawerModel(title: 'DashBoard', image: AssetImages.dashboard),
    const DrawerModel(title: 'My Transaction', image: AssetImages.convertCard),

    const DrawerModel(title: 'Statistics', image: AssetImages.graph),

    const DrawerModel(title: 'Wallet Account', image: AssetImages.wallet2),

    const DrawerModel(title: 'My Investments', image: AssetImages.chart2),


  ];
int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(

      itemCount:items.length,

      itemBuilder:(context, index) {
        return GestureDetector(
          onTap: () {
              setState(() {
                selectedIndex=index;
              });
            },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(drawerModel: items[index], isActive: selectedIndex==index,),
          ),
        );
      },
    );
  }
}
