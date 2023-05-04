import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Storyscreen extends StatefulWidget {
  const Storyscreen({Key? key}) : super(key: key);

  @override
  State<Storyscreen> createState() => _StoryscreenState();
}

class _StoryscreenState extends State<Storyscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text("WEDNESDAY,SEPTEMBER 12",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: CupertinoColors.systemGrey2)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today",
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
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    box("https://img.freepik.com/free-vector/sport-inventory-vector-illustration_1284-15331.jpg"),
                    box("https://img.freepik.com/free-vector/sport-inventory-vector-illustration_1284-15331.jpg"),
                    box("https://img.freepik.com/free-vector/sport-inventory-vector-illustration_1284-15331.jpg"),
                    box("https://img.freepik.com/free-vector/sport-inventory-vector-illustration_1284-15331.jpg"),
                    box("https://img.freepik.com/free-vector/sport-inventory-vector-illustration_1284-15331.jpg"),
                    box("https://img.freepik.com/free-vector/sport-inventory-vector-illustration_1284-15331.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget box(String img) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: CupertinoColors.activeBlue,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "$img"),
                              fit: BoxFit.cover)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("SERIOUSLY?",
                              style: TextStyle(
                                  color: CupertinoColors.white, fontSize: 15)),
                          Text("Sport Games",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: CupertinoColors.white,
                                  fontSize: 25)),
                          Spacer(),
                          Text("dhfgdhghgdfjgdfh f dfhgdhf ffghfghfh",
                              style: TextStyle(
                                  color: CupertinoColors.white, fontSize: 15)),
                        ],
                      ),
                    ),
    );
  }
}
