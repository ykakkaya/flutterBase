import 'package:flutter/material.dart';
import 'package:flutter_third/red.dart';
import 'package:flutter_third/yellow.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title:
            Text("Routing İşlemleri ", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow[600],
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (contex) => YellowPage()));
              },
              child: Text(
                "SARI SAYFAYA GİT",
                style: TextStyle(color: Colors.white),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (contex) => RedPage()));
              },
              child: Text(
                "KIRMIZI SAYFAYA GİT",
                style: TextStyle(color: Colors.white),
              ))
        ]),
      ),
    );
  }
}
