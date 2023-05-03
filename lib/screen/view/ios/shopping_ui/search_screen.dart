import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plateform_convertor/screen/provider/ios_shopping_provider.dart';
import 'package:plateform_convertor/screen/view/ios/shopping_ui/dash_screen.dart';
import 'package:provider/provider.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({Key? key}) : super(key: key);

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  @override
  Widget build(BuildContext context) {
    st = Provider.of<Ios_shopping>(context, listen: true);
    sf = Provider.of<Ios_shopping>(context, listen: false);
    return CupertinoPageScaffold(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,padding: EdgeInsets.symmetric(horizontal: 10),height: 90,width: double.infinity,
            child: Container(height: 40,child: CupertinoSearchTextField()),
          )
        ],
      ),
    );
  }
}
