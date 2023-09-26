// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:products/data/models/product.dart';

class Detay extends StatefulWidget {
  Product product;
  Detay({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/${widget.product.img}"),
            Text(
              widget.product.name,
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "${widget.product.price.toString()} ₺",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent),
                onPressed: () {
                  print("${widget.product.name} sepete eklendi");
                },
                icon: Icon(Icons.add),
                label: Text("Sepete Ekle"))
          ],
        ),
      ),
    );
  }
}
