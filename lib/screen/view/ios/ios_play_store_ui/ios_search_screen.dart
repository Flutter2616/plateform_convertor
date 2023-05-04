import 'package:flutter/cupertino.dart';

class Iossearch extends StatefulWidget {
  const Iossearch({Key? key}) : super(key: key);

  @override
  State<Iossearch> createState() => _IossearchState();
}

class _IossearchState extends State<Iossearch> {
  @override
  Widget build(BuildContext context) {
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
