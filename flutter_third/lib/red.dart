import 'package:flutter/material.dart';
import 'package:flutter_third/yellow.dart';

class RedPage extends StatefulWidget {
  const RedPage({super.key});

  @override
  State<RedPage> createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("KIRMIZI SAYFA"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.yellow[700]),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (contex) => YellowPage()));
              },
              child: Text("SARI SAYFAYA GİT",
                  style: TextStyle(color: Colors.white))),
          ElevatedButton(
              style: ElevatedButton.styleFrom(),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("GERİ GİT")),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: Text("ANA SAYFAYA GİT",
                  style: TextStyle(color: Colors.white))),
        ],
      )),
    );
  }
}
