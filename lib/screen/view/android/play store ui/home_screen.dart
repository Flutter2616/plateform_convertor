import 'package:flutter/material.dart';
import 'package:plateform_convertor/screen/provider/play_store_provider.dart';
import 'package:plateform_convertor/screen/view/android/play%20store%20ui/app_screen.dart';
import 'package:plateform_convertor/screen/view/android/play%20store%20ui/topcharts_screen.dart';
import 'package:provider/provider.dart';
PlaystoreProvider? pt;
PlaystoreProvider? pf;
class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
    pt=Provider.of<PlaystoreProvider>(context,listen: true);
    pf=Provider.of<PlaystoreProvider>(context,listen: false);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,type: BottomNavigationBarType.fixed,
            unselectedLabelStyle: TextStyle(color: Colors.black),showUnselectedLabels: true,showSelectedLabels: true,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.green.shade700,
            unselectedItemColor: Colors.black,currentIndex: pt!.i,onTap: (value) {
              pf!.bottomnavigation(value);
            },
            items: [
              BottomNavigationBarItem(
                  label: "Games",
                  icon: Icon(Icons.sports_esports),
                  activeIcon:
                      Icon(Icons.sports_esports, color: Colors.green.shade700)),
              BottomNavigationBarItem(
                  label: "Apps",
                  icon: Icon(Icons.grid_view_outlined),
                  activeIcon: Icon(Icons.grid_view_rounded,
                      color: Colors.green.shade700)),
              BottomNavigationBarItem(
                  label: "Movies",
                  icon: Icon(Icons.local_movies_outlined),
                  activeIcon:
                      Icon(Icons.local_movies, color: Colors.green.shade700)),
              BottomNavigationBarItem(
                  label: "Books",
                  icon: Icon(Icons.book_outlined),
                  activeIcon: Icon(Icons.book, color: Colors.green.shade700)),
            ]),
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 4,
                        spreadRadius: 5)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search for app and game",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    suffixIcon: Icon(Icons.keyboard_voice_outlined,
                        color: Colors.black),
                    prefixIcon: Icon(Icons.menu, color: Colors.black)),
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.green.shade700,
            labelColor: Colors.green.shade700,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                text: "For you",
              ),
              Tab(text: "Top charts"),
              Tab(text: "Categories"),
              Tab(text: "Editor's choice"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Appscreen(),
            Topchartscreen(),
            Appscreen(),
            Appscreen(),
          ],
        ),
      ),
    );
  }
}
