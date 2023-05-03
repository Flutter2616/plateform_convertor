import 'package:flutter/cupertino.dart';
import 'package:plateform_convertor/screen/provider/ios_shopping_provider.dart';
import 'package:plateform_convertor/screen/view/ios/shopping_ui/product_screen.dart';
import 'package:plateform_convertor/screen/view/ios/shopping_ui/search_screen.dart';
import 'package:provider/provider.dart';

import 'cart_screen.dart';

Ios_shopping? st;
Ios_shopping? sf;

class Dashscreen extends StatefulWidget {
  const Dashscreen({Key? key}) : super(key: key);

  @override
  State<Dashscreen> createState() => _DashscreenState();
}

class _DashscreenState extends State<Dashscreen> {
  List screenlist=[
    Productscreen(),
    Searchscreen(),
    Cartscreen()
  ];
  @override
  Widget build(BuildContext context) {
    st = Provider.of<Ios_shopping>(context, listen: true);
    sf = Provider.of<Ios_shopping>(context, listen: false);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(iconSize: 25,border: Border.fromBorderSide(BorderSide.none),height: 60,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart),
            label: 'Cart',
          ),
        ],
      ),
     tabBuilder: (context, index) {
       return CupertinoTabView(
         builder: (context) {
           return screenlist[index];
         },
       );
     },
    );
  }
}
