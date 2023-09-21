import 'package:flutter/material.dart';
import 'package:flutter_fourth/models/user.dart';
import 'package:flutter_fourth/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BİRİNCİ SAYFA")),
      body: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: () {
                var user =
                    User(name: "Yakup", age: 39, email: "info@ykakkaya.com");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Page2(
                              user: user,
                            )));
              },
              child: Text("VERİ GÖNDER"))
        ]),
      ),
    );
  }
}
