import 'package:flutter/material.dart';
import 'package:flutter_first/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String title = "ÜRÜN DETAY SAYFASI";
  final String selamla = "MacBook Pro";
  final String anons = "Kaçırılmayacak Fırsat";
  final String anons2 = "Apple Macbook larda Süper İndirimler";
  final String desc =
      "Apple Macbook sizin performansınızın artmasına ve işlerinizi daha hızlı yapmanıza yardımcı olacaktır.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
              color: appbar_font,
              fontFamily: appbar_fontFamily,
              fontSize: appbar_fontSize.toDouble()),
        ),
        centerTitle: true,
        backgroundColor: appbar_background,
      ),
      body: Center(
        child: Column(
          children: [
            productName(),
            productImage(),
            productProperty(),
            firsat(anons),
            firsat(anons2),
            description(desc),
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  productPrice(),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle_outline),
                    label: Text("SEPETE EKLE"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(20, 50),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Text productPrice() {
    return Text(
      "30000 TL",
      style: TextStyle(
          color: appbar_background,
          fontSize: appbar_fontSize.toDouble(),
          fontStyle: FontStyle.normal),
    );
  }

  Widget description(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: desc_fontSize.toDouble(), color: body_font),
      ),
    );
  }

  Padding firsat(String text) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
        style:
            TextStyle(fontSize: anons_fontSize.toDouble(), color: body_font2),
      ),
    );
  }

  Row productProperty() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FilledButton(
          onPressed: () {},
          child: const Text("m1 işlemci"),
          style: FilledButton.styleFrom(backgroundColor: appbar_background),
        ),
        FilledButton(
          onPressed: () {},
          child: const Text("13,3 inc"),
          style: FilledButton.styleFrom(
            backgroundColor: appbar_background,
          ),
        ),
        FilledButton(
          onPressed: () {},
          child: const Text("Apple"),
          style: FilledButton.styleFrom(backgroundColor: appbar_background),
        ),
        FilledButton(
            onPressed: () {},
            child: const Text("2021"),
            style: FilledButton.styleFrom(backgroundColor: appbar_background))
      ],
    );
  }

  Padding productImage() {
    return const Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(image: AssetImage('images/mac.jpg')),
    );
  }

  Text productName() {
    return Text(
      selamla,
      style: TextStyle(
        fontSize: 50,
        color: body_font2,
      ),
    );
  }
}
