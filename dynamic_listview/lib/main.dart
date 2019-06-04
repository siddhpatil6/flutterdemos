import 'package:flutter/material.dart';
import 'package:dynamic_listview/app_screen/Home.dart';
void main() {
  runApp(MaterialApp(
    title: "Dynamic ListView",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: Text("Dynamic List"),),
      body: getDynamicListView(),
    ),
  ));
}




