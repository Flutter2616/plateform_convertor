import 'dart:io';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:plateform_convertor/screen/provider/play_store_provider.dart';
import 'package:plateform_convertor/screen/provider/setting_provider.dart';
import 'package:plateform_convertor/screen/view/android/play%20store%20ui/app_screen.dart';
import 'package:plateform_convertor/screen/view/android/play%20store%20ui/details_screen.dart';
import 'package:plateform_convertor/screen/view/android/play%20store%20ui/home_screen.dart';
import 'package:plateform_convertor/screen/view/android/play%20store%20ui/topcharts_screen.dart';
import 'package:plateform_convertor/screen/view/android/setting%20ui/setting_android_screen.dart';
import 'package:plateform_convertor/screen/view/ios/setting%20ui/setting_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>  MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => SettingProvider()),
          ChangeNotifierProvider(create: (context) => PlaystoreProvider()),
        ],
        // child: Platform.isAndroid
            // ?
        child:CupertinoApp(theme: CupertinoThemeData(brightness: Brightness.light),
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => Settingscreen(),
          },
        )
        //     : MaterialApp(
        //   debugShowCheckedModeBanner: false,
        //   // initialRoute: "detail",
        //   routes: {
        //     //setting
        //     '/': (context) => Setting_android(),
        //     //play store
        //     // '/': (context) => Homescreen(),
        //     // 'app':(context) => Appscreen(),
        //     // 'top':(context) => Topchartscreen(),
        //     // 'detail':(context) => Detailscreen(),
        //   },
        // ),
      ), // Wrap your app
    ),
  );
}
