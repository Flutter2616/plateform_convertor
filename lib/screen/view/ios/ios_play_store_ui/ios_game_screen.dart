import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plateform_convertor/screen/provider/app_store_provider.dart';
import 'package:provider/provider.dart';

import 'ios_dash_screen.dart';

class IosGame extends StatefulWidget {
  const IosGame({Key? key}) : super(key: key);

  @override
  State<IosGame> createState() => _IosGameState();
}

class _IosGameState extends State<IosGame> {
  @override
  Widget build(BuildContext context) {
    at = Provider.of<AppstoreProvider>(context, listen: true);
    af = Provider.of<AppstoreProvider>(context, listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Games",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: CupertinoColors.black)),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://static01.nyt.com/images/2021/10/13/science/13shatner-launch-oldest-person-sub/13shatner-launch-oldest-person-sub-superJumbo.jpg"),
                  )
                ],
              ),
              SizedBox(height: 5),
              Container(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    new_game("https://wallpapercave.com/wp/wp2928790.jpg"),
                    new_game("https://wallpaper.dog/large/10957790.jpg"),
                    new_game("https://wallpapercave.com/wp/wp7214958.png"),
                    new_game("https://wallpaperaccess.com/full/955487.jpg"),
                  ],
                ),
              ),
              Divider(
                  height: 1, thickness: 2, color: CupertinoColors.systemGrey5),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discover AR Gaming",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: CupertinoColors.black)),
                  Text("See All",
                      style: TextStyle(
                          color: CupertinoColors.activeBlue,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                ],
              ),
              SizedBox(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: PageView.builder(
                    itemCount: at!.gamelist.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 80.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "${af!.gamelist[index].img}"),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${af!.gamelist[index].name}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: CupertinoColors.black),
                                    ),
                                    Text(
                                      "Unlimated fun",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: CupertinoColors.systemGrey3),
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Text("Get",style: TextStyle(color: CupertinoColors.activeBlue,fontWeight: FontWeight.w500)),
                                        SizedBox(width: 5),
                                        Text("In app purchase",style: TextStyle(color: CupertinoColors.systemGrey3,fontSize: 15))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 15),
                            line(),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "${af!.gamelist[index].img}"),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${af!.gamelist[index].name}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: CupertinoColors.black),
                                    ),
                                    Text(
                                      "Unlimated fun",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: CupertinoColors.systemGrey3),
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Text("Get",style: TextStyle(color: CupertinoColors.activeBlue,fontWeight: FontWeight.w500)),
                                        SizedBox(width: 5),
                                        Text("In app purchase",style: TextStyle(color: CupertinoColors.systemGrey3,fontSize: 15))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 15),
                            line(),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget new_game(String game) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New Game",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: CupertinoColors.activeBlue),
          ),
          SizedBox(height: 5),
          Text(
            "Warhammer Aos: Realm War",
            style: TextStyle(
                color: CupertinoColors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "Compete in Thilling Battles",
            style: TextStyle(
                color: CupertinoColors.systemGrey3,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          Container(
            height: 230,
            width: 340,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage("$game"), fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }

  Divider line() => Divider(
    color: CupertinoColors.systemGrey5,
    height: 1,
    indent: 70,endIndent: 10,
    thickness: 2,
  );
}
