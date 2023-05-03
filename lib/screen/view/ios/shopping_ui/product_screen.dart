import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plateform_convertor/screen/provider/ios_shopping_provider.dart';
import 'package:provider/provider.dart';

import 'dash_screen.dart';

class Productscreen extends StatefulWidget {
  const Productscreen({Key? key}) : super(key: key);

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  @override
  Widget build(BuildContext context) {
    st = Provider.of<Ios_shopping>(context, listen: true);
    sf = Provider.of<Ios_shopping>(context, listen: false);
    return CupertinoPageScaffold(
      child: Column(
        children: [
          Container(
              width: double.infinity,
              height: 150,
              color: CupertinoColors.systemGrey6,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15),
              child: Text(
                "Cupertino Store",
                style: TextStyle(
                    color: CupertinoColors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 28),
              )),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 8),
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 65,
                            margin: EdgeInsets.only(right: 10),
                            height: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        "${sf!.productlist[index].img}"))),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("${sf!.productlist[index].name}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: CupertinoColors.black)),
                              Text("\$${sf!.productlist[index].price}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: CupertinoColors.systemGrey3)),
                            ],
                          ),
                          Spacer(),
                          Icon(CupertinoIcons.add_circled,
                              color: CupertinoColors.link, size: 25),
                        ],
                      ),
                      SizedBox(height: 5),
                      line(),
                    ],
                  ),
                );
              },
              itemCount: st!.productlist.length,
            ),
          )
        ],
      ),
    );
  }

  Divider line() => Divider(
        color: CupertinoColors.systemGrey5,
        height: 1,
        indent: 80,
        thickness: 2,
        endIndent: 8,
      );
}
