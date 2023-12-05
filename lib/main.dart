import 'package:flutter/material.dart';

void main() {
  runApp(const Interface());
}

class Interface extends StatelessWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Image.asset("images/lake.jpg"),
              titleRow,
              Container(height: 20),
              buttonRow,
              Container(height: 40),
              textSpace
            ],
          ),
        ),
      ),
    );
  }
}

Widget titleRow = Row(
  children: [
    Column(
      children: [
        Container(
            padding: EdgeInsets.all(10),
            child: const Text(
              "      Oesichen Lake Campground",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
        Container(
          padding: EdgeInsets.only(right: 19, bottom: 10),
          child: const Text(
            "Kandersteg, Switzerland",
            style: TextStyle(fontSize: 17, color: Colors.grey),
          ),
        ),
      ],
    ),
    Container(
      width: 15,
    ),
    const Icon(
      Icons.star,
      size: 40,
      color: Colors.red,
    ),
    Container(
        padding: EdgeInsets.all(1),
        child: const Text(
          "41",
          style: TextStyle(fontSize: 18),
        ))
  ],
);
Widget buttonRow = Row(
  children: [
    buildButtonColumn(Icons.call, "CALL"),
    buildButtonColumn(Icons.near_me, "ROUTE"),
    buildButtonColumn(Icons.share, "SHARE")
  ],
);
Widget textSpace = Container(
  padding: EdgeInsets.symmetric(horizontal: 30),
  child: const Text(
    "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
    style: TextStyle(fontSize: 16),
  ),
);
Expanded buildButtonColumn(IconData icon, String text) {
  return Expanded(
      child: Column(
    children: [
      Icon(icon, color: Colors.blue, size: 35),
      Text(text,
          style: const TextStyle(
              color: Colors.blue, fontSize: 17, fontWeight: FontWeight.bold))
    ],
  ));
}
