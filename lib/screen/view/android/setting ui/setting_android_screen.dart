import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:plateform_convertor/screen/provider/setting_provider.dart';
import 'package:provider/provider.dart';

class Setting_android extends StatefulWidget {
  const Setting_android({Key? key}) : super(key: key);

  @override
  State<Setting_android> createState() => _Setting_androidState();
}

class _Setting_androidState extends State<Setting_android> {
  SettingProvider? st;
  SettingProvider? sf;

  @override
  Widget build(BuildContext context) {
    st = Provider.of(context, listen: true);
    sf = Provider.of(context, listen: false);
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red.shade600,
          title: Text(
            "Settings UI",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            option_title("Commen"),
            option(
              title: "Language",
              sub: "English",
              i: Icon(Icons.language, color: Colors.grey),swi: false,),
            option(
              title: "Enviroment",
              sub: "Production",
              i: Icon(Icons.cloud_outlined, color: Colors.grey),swi: false,),
            option_title("Account"),
            option(title: "Phone number", i: Icon(Icons.call),swi: false,),
            option(title: "Email", i: Icon(Icons.email_sharp),swi: false,),
            option(title: "Sign out", i: Icon(Icons.exit_to_app),swi: false,),
            option_title("Security"),
            option(title: "Lock app in background", i: Icon(Icons.phonelink_lock),swi: true, sw: Switch(
              value: true,
              onChanged: (value) {
                sf!.buttonswitch(value);
              },
              activeColor: Colors.red,
              inactiveThumbColor: Colors.white,
              activeTrackColor: Colors.red.shade200,
              inactiveTrackColor: Colors.grey,
            )),
            option(title: "Use fingerprint", i: Icon(Icons.fingerprint),swi: true, sw: Switch(
              value: false,
              onChanged: (value) {
                sf!.fingerswitch(value);
              },
              activeColor: Colors.red,
              inactiveThumbColor: Colors.white,
              activeTrackColor: Colors.red.shade200,
              inactiveTrackColor: Colors.grey,
            )),
            option(title: "Change password", i: Icon(Icons.lock),swi: true, sw: Switch(
              value: true,
              onChanged: (value) {
                sf!.passwordswitch(value);
              },
              activeColor: Colors.red,
              inactiveThumbColor: Colors.white,
              activeTrackColor: Colors.red.shade200,
              inactiveTrackColor: Colors.grey,
            )),
            option_title("Misc")
          ],
        ),
      ),
    );
  }

  Widget option_title(String s) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Text(
        "$s",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.red.shade600,
            fontSize: 15),
      ),
    );
  }

  Widget option({String? title, String? sub, Icon? i,bool? swi,Switch? sw}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListTile(
        leading: i,
        title: Text("$title",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16)),
        subtitle: sub != null
            ? Text("$sub",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade500))
            : Text("",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade500)),
        trailing: swi==true?sw:Text(""),
      ),
    );
  }
}
