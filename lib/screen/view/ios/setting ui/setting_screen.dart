import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settingscreen extends StatefulWidget {
  const Settingscreen({Key? key}) : super(key: key);

  @override
  State<Settingscreen> createState() => _SettingscreenState();
}

class _SettingscreenState extends State<Settingscreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey5,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemRed,
        middle: Text("Settings UI",
            style: TextStyle(
                color: CupertinoColors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20)),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title_text("Commen"),
            Container(
              width: double.infinity,
              color: CupertinoColors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CupertinoListTile.notched(
                    title: Text("Language",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: CupertinoColors.black,
                            fontSize: 20)),
                    leading: Icon(CupertinoIcons.globe,
                        size: 28, color: CupertinoColors.systemGrey2),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("English",
                            style: TextStyle(
                                fontSize: 16,
                                color: CupertinoColors.systemGrey3,
                                fontWeight: FontWeight.w500)),
                        SizedBox(width: 10),
                        Icon(CupertinoIcons.right_chevron,
                            color: CupertinoColors.systemGrey3),
                      ],
                    ),
                  ),
                  line(),
                  CupertinoListTile.notched(
                    title: Text("Environment",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: CupertinoColors.black,
                            fontSize: 20)),
                    leading: Icon(CupertinoIcons.cloud,
                        size: 28, color: CupertinoColors.systemGrey2),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Production",
                            style: TextStyle(
                                fontSize: 16,
                                color: CupertinoColors.systemGrey3,
                                fontWeight: FontWeight.w500)),
                        SizedBox(width: 10),
                        Icon(CupertinoIcons.right_chevron,
                            color: CupertinoColors.systemGrey3),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            title_text("Account"),
            Container(
              width: double.infinity,
              color: CupertinoColors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  listtile_without_switch(
                      "Phone number",
                      Icon(
                        CupertinoIcons.phone_solid,
                        color: CupertinoColors.systemGrey2,
                      )),
                  line(),
                  listtile_without_switch(
                      "Email",
                      Icon(CupertinoIcons.mail_solid,
                          color: CupertinoColors.systemGrey2)),
                  line(),
                  listtile_without_switch(
                      "Signout",
                      Icon(CupertinoIcons.square_arrow_right,
                          color: CupertinoColors.systemGrey2)),
                ],
              ),
            ),
            title_text("Security"),
            Container(
              width: double.infinity,
              color: CupertinoColors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  listtile_with_switch(
                      "Lock app in background",
                      Icon(
                        CupertinoIcons.alarm,
                        color: CupertinoColors.systemGrey2,
                      )),
                  line(),
                  listtile_with_switch(
                      "Use fingerprint",
                      Icon(CupertinoIcons.add,
                          color: CupertinoColors.systemGrey2)),
                  line(),
                  listtile_with_switch(
                      "Change Password",
                      Icon(CupertinoIcons.lock_fill,
                          color: CupertinoColors.systemGrey2)),
                ],
              ),
            ),
            title_text("Misc"),
            Container(
              width: double.infinity,
              color: CupertinoColors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  listtile_without_switch(
                      "Term of Service",
                      Icon(
                        CupertinoIcons.doc_text_fill,
                        color: CupertinoColors.systemGrey2,
                      )),
                  line(),
                  listtile_without_switch(
                      "Open source licenses",
                      Icon(CupertinoIcons.square_fill_on_square_fill,
                          color: CupertinoColors.systemGrey2)),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  CupertinoListTile listtile_without_switch(String title, Icon i) {
    return CupertinoListTile.notched(
      title: Text("$title",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: CupertinoColors.black,
              fontSize: 20)),
      leading: i,
      trailing: Icon(CupertinoIcons.right_chevron,
          color: CupertinoColors.systemGrey3),
    );
  }

  CupertinoListTile listtile_with_switch(String title, Icon i) {
    return CupertinoListTile.notched(
        title: Text("$title",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: CupertinoColors.black,
                fontSize: 20)),
        leading: i,
        trailing: CupertinoSwitch(
          value: true,
          onChanged: (value) {},
          thumbColor: CupertinoColors.white,
          trackColor: CupertinoColors.systemGrey5,
          activeColor: CupertinoColors.systemRed,
        ));
  }

  Divider line() =>
      Divider(color: CupertinoColors.systemGrey6, height: 1, indent: 40);

  Padding title_text(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 20, bottom: 8),
      child: Text(
        "$title",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: CupertinoColors.systemGrey),
      ),
    );
  }
}
