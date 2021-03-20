import 'package:flutter/material.dart';
import 'package:layout_example/screen/activity_screen.dart';
import 'package:layout_example/screen/article_screen.dart';
import 'package:layout_example/screen/home_screen.dart';

class Page {
  final String title;
  final Icon icon;
  final String lable;
  final Widget page;

  Page({this.title, this.icon, this.lable, this.page});
}

List<Page> pages = [
  Page(
    icon: Icon(Icons.home_filled),
    lable: "Home",
    page: HomeScreen(),
    title: "หน้าแรก",
  ),
  Page(
    icon: Icon(Icons.home_filled),
    lable: "news",
    page: ArticleScreen(),
    title: "ข่าวสาร",
  ),
  Page(
    icon: Icon(Icons.home_filled),
    lable: "activity",
    page: ActivityScreen(),
    title: "กิจกรรม",
  ),
];
