import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    'images/1.webp',
    'images/2.webp',
    'images/3.jpg',
    'images/4.jpg',
    'images/5.webp',
    'images/6.jpg',
    'images/7.jpg',
    'images/8.jpeg',
  ];
  List<String> postImages = [
    'images/post1.webp',
    'images/post2.jpeg',
    'images/post3.jpg',
    'images/post4.jpg',
    'images/post5.jpeg',
    'images/post6.jpg',
    'images/post7.jpg',
  ];
  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 2));
  }

  var islike = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(height: 50, child: Image.asset('images/title.png')),
        actions: [
          //APPBAR ICONS

          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.messenger_outline))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                //STORY AREA

                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      profileImages.length,
                      (index) => Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      AssetImage('images/story.webp'),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        profileImages[index].toString()),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Profil Adı")
                              ],
                            ),
                          )),
                ),
              ),
              Divider(),

              //POST AREA

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    postImages.length,
                    (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // PROFİL INFORMATION

                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage('images/story.webp'),
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundImage: AssetImage(
                                          profileImages[index].toString()),
                                    ),
                                  ),
                                ),
                                Text('Profil Adı'),
                                Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_vert))
                              ],
                            ),
                            //POST IMAGES
                            Image.asset(postImages[index]),

                            //POST ICONS

                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (islike == 0) {
                                        islike = 1;
                                      } else {
                                        islike = 0;
                                      }
                                    });
                                  },
                                  icon: Icon(Icons.favorite),
                                  color:
                                      islike == 1 ? Colors.red : Colors.black12,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.chat_outlined)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.label_important)),
                                Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.bookmark_border_outlined)),
                              ],
                            ),
                            //COMMENT AREA
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                  TextSpan(text: "Profile Name"),
                                  TextSpan(
                                      text: " ve ... diğer kişi beğendi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))
                                ])),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                  TextSpan(
                                      text: "Profile Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    text:
                                        " çok güzel bir instagram klon çalışması oldu.Bu çalışmaların videosunu da youtube kanalımda çekeceğim.",
                                  )
                                ])),
                            Text(
                              '... yorumun tümünü gör',
                              style: TextStyle(color: Colors.black38),
                            )
                          ],
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
