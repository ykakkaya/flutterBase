import 'package:flutter/material.dart';
import 'package:flutter_third/red.dart';

class YellowPage extends StatefulWidget {
  const YellowPage({super.key});

  @override
  State<YellowPage> createState() => _YellowPageState();
}

class _YellowPageState extends State<YellowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          "SARI SAYFA",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (contex) => RedPage()));
                    },
                    child: Text(
                      "KIRMIZI SAYFAYA GİT",
                      style: TextStyle(color: Colors.white),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("MOR SAYFAYA GİT",
                        style: TextStyle(color: Colors.white)))
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "GERİ GİT",
                )),
          ],
        ),
      ),
    );
  }
}
