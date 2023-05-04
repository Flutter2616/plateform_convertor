import 'dart:io';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:plateform_convertor/screen/provider/app_store_provider.dart';
import 'package:plateform_convertor/screen/provider/ios_shopping_provider.dart';
import 'package:plateform_convertor/screen/provider/play_store_provider.dart';
import 'package:plateform_convertor/screen/provider/setting_provider.dart';
import 'package:plateform_convertor/screen/view/android/play%20store%20ui/app_screen.dart';
import 'package:plateform_convertor/screen/view/android/play%20store%20ui/details_screen.dart';
import 'package:plateform_convertor/screen/view/android/play%20store%20ui/home_screen.dart';
import 'package:plateform_convertor/screen/view/android/play%20store%20ui/topcharts_screen.dart';
import 'package:plateform_convertor/screen/view/android/setting%20ui/setting_android_screen.dart';
import 'package:plateform_convertor/screen/view/ios/ios_play_store_ui/ios_app_screen.dart';
import 'package:plateform_convertor/screen/view/ios/ios_play_store_ui/ios_dash_screen.dart';
import 'package:plateform_convertor/screen/view/ios/ios_play_store_ui/ios_game_screen.dart';
import 'package:plateform_convertor/screen/view/ios/ios_play_store_ui/ios_search_screen.dart';
import 'package:plateform_convertor/screen/view/ios/ios_play_store_ui/story_screen.dart';
import 'package:plateform_convertor/screen/view/ios/setting%20ui/setting_screen.dart';
import 'package:plateform_convertor/screen/view/ios/shopping_ui/cart_screen.dart';
import 'package:plateform_convertor/screen/view/ios/shopping_ui/dash_screen.dart';
import 'package:plateform_convertor/screen/view/ios/shopping_ui/product_screen.dart';
import 'package:plateform_convertor/screen/view/ios/shopping_ui/search_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>  MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => SettingProvider()),
          ChangeNotifierProvider(create: (context) => PlaystoreProvider()),
          ChangeNotifierProvider(create: (context) => Ios_shopping()),
          ChangeNotifierProvider(create: (context) => AppstoreProvider()),
        ],
        child: Platform.isAndroid
            ? CupertinoApp(theme: CupertinoThemeData(brightness: Brightness.light),
          debugShowCheckedModeBanner: false,
          routes: {
          //setting
            '/': (context) => Settingscreen(),
          //   shopping
          //   '/':(p0) => Dashscreen(),
          //   'product':(p0) => Productscreen(),
          //   'search':(p0) => Searchscreen(),
          //   'cart':(p0) => Cartscreen(),

            //app store
            // '/':(p0) => Appdash(),
            // 'story':(p0) => Storyscreen(),
            // 'game':(p0) => IosGame(),
            // 'iosapp':(p0) => Iosapp(),
            // 'search':(p0) => Iossearch()
          },
        )
            : MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            //setting
            '/': (context) => Setting_android(),
            //play store
            // '/': (context) => Homescreen(),
            // 'app':(context) => Appscreen(),
            // 'top':(context) => Topchartscreen(),
            // 'detail':(context) => Detailscreen(),
          },
        ),
      ), // Wrap your app
    ),
  );
}
