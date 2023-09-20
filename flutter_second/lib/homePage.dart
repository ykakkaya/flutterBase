import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("setState() Çalışması"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "SAYAÇ: $counter",
            style: TextStyle(
              color: Color.fromARGB(255, 75, 140, 173),
              fontSize: 30,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber, minimumSize: Size(50, 50)),
                  onPressed: () {
                    setState(() {
                      if (counter >= 1) {
                        counter -= 1;
                      } else {
                        counter = 0;
                      }
                    });
                  },
                  icon: Icon(Icons.remove),
                  label: Text("AZALT")),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber, minimumSize: Size(50, 50)),
                  onPressed: () {
                    setState(() {
                      counter += 1;
                    });
                  },
                  icon: Icon(Icons.add),
                  label: Text("ARTIR")),
            ],
          )
        ],
      )),
    );
  }
}
