import 'package:flutter/material.dart';
import 'package:insta_clone/homePage.dart';
import 'package:insta_clone/searchPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage == 1 ? SearchPage() : HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 0;
                  });
                },
                icon: Icon(Icons.home),
                color: currentPage == 0 ? Colors.redAccent : Colors.black),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 1;
                  });
                },
                icon: Icon(Icons.search),
                color: currentPage == 1 ? Colors.redAccent : Colors.black),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 2;
                  });
                },
                icon: Icon(Icons.add_box),
                color: currentPage == 2 ? Colors.redAccent : Colors.black),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 3;
                  });
                },
                icon: Icon(Icons.ondemand_video),
                color: currentPage == 3 ? Colors.redAccent : Colors.black),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 4;
                  });
                },
                icon: Icon(Icons.person),
                color: currentPage == 4 ? Colors.redAccent : Colors.black),
          ],
        ),
      ),
    );
  }
}
