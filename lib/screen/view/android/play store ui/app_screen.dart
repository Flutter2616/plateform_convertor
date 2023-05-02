import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

class Appscreen extends StatefulWidget {
  const Appscreen({Key? key}) : super(key: key);

  @override
  State<Appscreen> createState() => _AppscreenState();
}

class _AppscreenState extends State<Appscreen> {
  @override
  Widget build(BuildContext context) {
    pt = Provider.of(context, listen: true);
    pf = Provider.of(context, listen: false);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 15, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommended for you",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                  Icon(Icons.arrow_forward_rounded)
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(onTap: () {
                    Navigator.pushNamed(context, 'detail',arguments: index);
                  },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      width: 130,
                      height: 100,
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "${pf!.showlist[index].img}"),fit: BoxFit.fill)),
                          ),
                          SizedBox(height: 5),
                          Text("${pf!.showlist[index].name}",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text("4.2"),
                              Icon(Icons.star, size: 15, color: Colors.black)
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: pt!.showlist.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 15, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New & Update for you",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                  Icon(Icons.arrow_forward_rounded)
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(onTap: () {
                    Navigator.pushNamed(context, 'detail',arguments: index);
                  },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      width: 130,
                      height: 100,
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "${pf!.showlist[index].img}"),fit: BoxFit.fill)),
                          ),
                          SizedBox(height: 5),
                          Text("${pf!.showlist[index].name}",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text("4.2"),
                              Icon(Icons.star, size: 15, color: Colors.black)
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: pt!.showlist.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 15, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("suggest for you",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                  Icon(Icons.arrow_forward_rounded)
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'detail',arguments: index);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      width: 130,
                      height: 100,
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "${pf!.showlist[index].img}"),fit: BoxFit.fill)),
                          ),
                          SizedBox(height: 5),
                          Text("${pf!.showlist[index].name}",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text("4.2"),
                              Icon(Icons.star, size: 15, color: Colors.black)
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: pt!.showlist.length,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
