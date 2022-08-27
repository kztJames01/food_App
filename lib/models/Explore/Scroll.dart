import 'package:flutter/material.dart';
import 'package:food_app/models/Explore/Offers.dart';
import 'package:food_app/models/Explore/exploreitemcard.dart';
import 'package:food_app/my_flutter_app_icons1.dart';

class Scroll extends StatefulWidget {
  TabController controller;
  Scroll({Key? key, required this.controller}) : super(key: key);

  @override
  State<Scroll> createState() => _ScrollState();
}

class _ScrollState extends State<Scroll> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          height: size.height*0.4,
          width: size.width,
          child: TabBarView(
            controller: widget.controller,
            children: [
              CardExplore(),
              CardExplore(),
              CardExplore(),
              CardExplore(),
              CardExplore(),
              CardExplore(),
              CardExplore(),
              CardExplore(),
              CardExplore(),
              CardExplore(),
              CardExplore(),
              CardExplore(),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "More",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
            ),
            SizedBox(
              width: size.width * 0.6,
            ),
            IconButton(
                splashRadius: 20.0,
                splashColor: Theme.of(context).backgroundColor,
                onPressed: () {},
                icon: Icon(
                  MyFlutterApp1.right_big,
                  color: Theme.of(context).primaryColor,
                ))
          ]),
        ),
      ]),
    );
  }
}