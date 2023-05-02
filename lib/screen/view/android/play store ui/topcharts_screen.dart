import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

class Topchartscreen extends StatefulWidget {
  const Topchartscreen({Key? key}) : super(key: key);

  @override
  State<Topchartscreen> createState() => _TopchartscreenState();
}

class _TopchartscreenState extends State<Topchartscreen> {
  @override
  Widget build(BuildContext context) {
    pt = Provider.of(context, listen: true);
    pf = Provider.of(context, listen: false);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Show installed apps",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  Switch(
                    activeTrackColor: Colors.green.shade200,
                    activeColor: Colors.green.shade700,
                    value: pt!.swi,
                    onChanged: (value) {
                      pf!.switch1(value);
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  button("Top free"),
                  button("Top grossing"),
                  button("Trending"),
                  button("Top Paid"),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'detail',arguments: index);
                    },
                    child: ListTile(
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("${index + 1}"),
                          Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "${pf!.showlist[index].img}")))),
                        ],
                      ),
                      title: Text("${pt!.showlist[index].name}",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.black)),subtitle: Column(
                      mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${pf!.showlist[index].type}",style: TextStyle(fontWeight: FontWeight.w400)),
                        Text("3.5*")
                      ],
                    ),
                    ),
                  ),
                );
              },itemCount: pt!.showlist.length),
            )
          ],
        ),
      ),
    );
  }

  Widget button(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black)),
        child: Text("$title",
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.grey.shade700)),
      ),
    );
  }
}
