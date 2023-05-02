import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({Key? key}) : super(key: key);

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    pt = Provider.of(context, listen: true);
    pf = Provider.of(context, listen: false);
    int index=ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(onTap: () {
            Navigator.pop(context);
          },child: Icon(Icons.arrow_back, color: Colors.black)),
          actions: [
            Icon(Icons.search, color: Colors.black),
            SizedBox(width: 10),
            Icon(Icons.more_vert, color: Colors.black),
            SizedBox(width: 10),
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage("${pf!.showlist[index].img}"))),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("${pf!.showlist[index].name}",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 25)),
                      SizedBox(height: 5),
                      Text("Daydream soft",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.green.shade700)),
                      SizedBox(height: 5),
                      Text(
                        "Contain ads * in-app purchase",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border(
                                right:
                                    BorderSide(color: Colors.grey.shade400))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("4.6*",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15)),
                            SizedBox(height: 3),
                            Text("95k Review",
                                style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border(
                                right:
                                    BorderSide(color: Colors.grey.shade400))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("5M+",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15)),
                            SizedBox(height: 3),
                            Text("Download",
                                style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        width: 100,
                        height: 35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("E",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15)),
                            SizedBox(height: 3),
                            Text("Everyone",
                                style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 35,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.green.shade800,
                    borderRadius: BorderRadius.circular(5)),
                child: Text("Install",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 150,
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        width: 250,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage("${pf!.showlist[index].img}"),
                                fit: BoxFit.fill)),
                      );
                    },
                    itemCount: 3,
                    scrollDirection: Axis.horizontal),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("About This game",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black)),
                  Icon(Icons.arrow_forward_rounded, color: Colors.black),
                ],
              ),
              SizedBox(height: 20),
              Text("Discover The endless desert",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 80,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black)),
                      child: Text("Action",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade700)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 120,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black)),
                      child: Text("Editor's choice",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade700)),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rating & reviews",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black)),
                  Icon(Icons.arrow_forward_rounded, color: Colors.black),
                ],
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("4.6",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w300,
                          color: Colors.black)),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("5"),
                          SizedBox(width: 5),
                          Container(
                              width: 280,
                              height: 10,
                              child: Expanded(
                                  child: LinearProgressIndicator(
                                color: Colors.green.shade700,
                                value: 0.6,
                                backgroundColor: Colors.grey.shade200,
                              ))),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("4"),
                          SizedBox(width: 5),
                          Container(
                              width: 280,
                              height: 10,
                              child: Expanded(
                                  child: LinearProgressIndicator(
                                    color: Colors.green.shade700,
                                    value: 0.7,
                                    backgroundColor: Colors.grey.shade200,
                                  ))),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("3"),
                          SizedBox(width: 5),
                          Container(
                              width: 280,
                              height: 10,
                              child: Expanded(
                                  child: LinearProgressIndicator(
                                    color: Colors.green.shade700,
                                    value: 0.9,
                                    backgroundColor: Colors.grey.shade200,
                                  ))),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("2"),
                          SizedBox(width: 5),
                          Container(
                              width: 280,
                              height: 10,
                              child: Expanded(
                                  child: LinearProgressIndicator(
                                    color: Colors.green.shade700,
                                    value: 0.3,
                                    backgroundColor: Colors.grey.shade200,
                                  ))),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("1"),
                          SizedBox(width: 5),
                          Container(
                              width: 280,
                              height: 10,
                              child: Expanded(
                                  child: LinearProgressIndicator(
                                    color: Colors.green.shade700,
                                    value: 0.5,
                                    backgroundColor: Colors.grey.shade200,
                                  ))),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
