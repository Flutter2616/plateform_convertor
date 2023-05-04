import 'package:flutter/cupertino.dart';
import 'package:plateform_convertor/screen/provider/app_store_provider.dart';
import 'package:plateform_convertor/screen/view/ios/ios_play_store_ui/ios_app_screen.dart';
import 'package:plateform_convertor/screen/view/ios/ios_play_store_ui/ios_game_screen.dart';
import 'package:plateform_convertor/screen/view/ios/ios_play_store_ui/ios_search_screen.dart';
import 'package:plateform_convertor/screen/view/ios/ios_play_store_ui/story_screen.dart';
import 'package:provider/provider.dart';

AppstoreProvider? at;
AppstoreProvider? af;
class Appdash extends StatefulWidget {
  const Appdash({Key? key}) : super(key: key);

  @override
  State<Appdash> createState() => _AppdashState();
}

class _AppdashState extends State<Appdash> {
  List appscreenlist = [
    Storyscreen(),
    IosGame(),
    Iosapp(),
    Iosapp(),
    Iossearch(),
  ];

  @override
  Widget build(BuildContext context) {
    at=Provider.of<AppstoreProvider>(context,listen: true);
    af=Provider.of<AppstoreProvider>(context,listen: false);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(border: Border.fromBorderSide(BorderSide.none),
        iconSize: 20,
        activeColor: CupertinoColors.activeBlue,
        inactiveColor: CupertinoColors.systemGrey4,
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.today), label: "Today"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.rocket_fill), label: "Game"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_stack_3d_up_fill), label: "App"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_arrow_down_fill),
              label: "Update"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "Search"),
        ],
      ),
      tabBuilder: (context, index) {
        return appscreenlist[index];
      },
    );
  }
}
