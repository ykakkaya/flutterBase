import 'package:flutter/material.dart';
import 'package:products/data/models/product.dart';
import 'package:products/ui/screens/detay.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  var title = "ÜRÜNLER";

  Future<List<Product>> productLoading() async {
    var productList = <Product>[];
    var p1 = Product(
        id: 1, price: 43000, name: "Macbook Pro 14", img: "bilgisayar.png");
    var p2 = Product(
        id: 2, price: 2500, name: "Rayban Club Master", img: "gozluk.png");
    var p3 = Product(
        id: 3, price: 40000, name: "SonyZX Kulaklık", img: "kulaklik.png");
    var p4 = Product(id: 4, price: 2000, name: "Gio Armani", img: "parfum.png");
    var p5 =
        Product(id: 5, price: 8000, name: "Casio X Series", img: "saat.png");
    var p6 =
        Product(id: 6, price: 18000, name: "Dyson Süpürge", img: "supurge.png");
    var p7 =
        Product(id: 7, price: 32000, name: "Iphone 13", img: "telefon.png");

    productList.add(p1);
    productList.add(p2);
    productList.add(p3);
    productList.add(p4);
    productList.add(p5);
    productList.add(p6);
    productList.add(p7);

    return productList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: FutureBuilder<List<Product>>(
            future: productLoading(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var products = snapshot.data;
                return ListView.builder(
                  itemCount: products!.length,
                  itemBuilder: (context, index) {
                    var product = products[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    Detay(product: product))));
                      },
                      child: Card(
                        child: Row(
                          children: [
                            Image.asset("images/${product.img}"),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(product.name),
                                Text("Fiyat: ${product.price.toString()} ₺"),
                                ElevatedButton(
                                    onPressed: () {
                                      debugPrint(
                                          "${product.name} sepete eklendi.");
                                    },
                                    child: Text("Sepete Ekle"))
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Center();
              }
            }));
  }
}
