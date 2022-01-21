import 'package:flutter/material.dart';
import 'package:shoes_shop_ui_flutter/details.dart';
import 'package:shoes_shop_ui_flutter/make_item.dart';

import 'Animation/fade_animation.dart';

class UiScreen extends StatefulWidget {
  @override
  _UiScreenState createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text(
          'Shoes',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child:  FadeAnimation(1,Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'All',
                            style: TextStyle(),
                          ),
                        ),
                      ),),
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child:  FadeAnimation(1.2,Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'Sneakers',
                            style: TextStyle(),
                          ),
                        ),
                      ),),
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child:  FadeAnimation(1.3,Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'Football',
                            style: TextStyle(),
                          ),
                        ),
                      ),),
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child:  FadeAnimation(1.4,Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'Soccer',
                            style: TextStyle(),
                          ),
                        ),
                      ),),
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child:  FadeAnimation(1.5,Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'Golf',
                            style: TextStyle(),
                          ),
                        ),
                      ),),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
          FadeAnimation(1.6,MakeItem(
                image: 'one.jpg',
                tag: 'red',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsPage(
                                image: 'one.jpg',
                                tag: 'red',
                              )));
                },
              ),),
          FadeAnimation(1.7,MakeItem(
                image: 'two.jpg',
                tag: 'blue',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsPage(
                                image: 'two.jpg',
                                tag: 'blue',
                              )));
                },
              ),),
          FadeAnimation(1.8,MakeItem(
                image: 'three.jpg',
                tag: 'green',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsPage(
                                image: 'three.jpg',
                                tag: 'green',
                              )));
                },
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
