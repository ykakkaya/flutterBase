import 'package:flutter/material.dart';
import 'package:flutter_fourth/models/user.dart';

class Page2 extends StatefulWidget {
  User user;
  Page2({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İKİNCİ SAYFA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.user.name),
            Text(widget.user.age.toString()),
            Text(widget.user.email)
          ],
        ),
      ),
    );
  }
}
