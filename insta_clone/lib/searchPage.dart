import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> searchImages = [
    'images/post1.webp',
    'images/post2.jpeg',
    'images/post3.jpg',
    'images/post4.jpg',
    'images/post5.jpeg',
    'images/post6.jpg',
    'images/post7.jpg',
    'images/post8.jpg',
    'images/post9.jpg',
    'images/post10.jpg',
    'images/post11.jpg',
    'images/post12.jpg',
    'images/post13.jpg',
    'images/post14.jpg',
    'images/post15.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Ara",
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30)),
              fillColor: Colors.black12,
              filled: true),
        ),
      ),
      body: MasonryGridView.builder(
          itemCount: searchImages.length,
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(searchImages[index].toString()),
              )),
    );
  }
}
