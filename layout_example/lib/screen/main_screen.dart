import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:layout_example/page.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentindex = 0;

  void onindexchange(int index) {
    setState(
      () {
        currentindex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            // UserAccountsDrawerHeader(
            //   currentAccountPicture: CircleAvatar(
            //     backgroundImage: NetworkImage(
            //         "https://i2.wp.com/www.nextsteptv.com/wp-content/uploads/2017/04/1-83.jpg?zoom=2&resize=735%2C400"),
            //   ),
            //   accountName: Text("veeta"),
            //   accountEmail: Text("veeta@gmai.com"),
            // ),
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://wallpaperaccess.com/full/672238.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://image.dogilike.com/shareimg/contentimg/2017/puy/b525226283f771d2ab913feeab1555f7.jpg",
                      ),
                    ),
                    Text(
                      "ชิบะ อินุ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/history');
              },
              leading: Icon(Icons.person_pin_outlined),
              title: Text("ประวัติ"),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/credit');
              },
              leading: Icon(Icons.terrain),
              title: Text("credit"),
            ),
            ListTile(
              leading: Icon(Icons.remove_circle_outlined),
              title: Text("profile3"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(pages[currentindex].title),
      ),
      body: pages[currentindex].page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: onindexchange,
        items: pages
            .map(
              (item) => BottomNavigationBarItem(
                icon: item.icon,
                label: item.lable,
              ),
            )
            .toList(),
      ),
    );
  }
}
