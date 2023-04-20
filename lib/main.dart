import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
double g = 200;
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Turkhish flag'),
      ),
      body: Center(
        child: Container(
          width: g*1.5,
          height: g,
          child: Stack(
            fit: StackFit.expand,
            clipBehavior:Clip.none ,
            children: [kirmizizemin,  Positioned(top:0.25*g ,left:0.25*g,child: beyazdaire), Positioned( top:0.3*g,left: 0.3625*g,child: kirmizidaire), Positioned(left: 0.7*g,top: 0.375*g,child: yildiz)],
          ),
        ),
      ),
    );
  }
}

Widget kirmizizemin = Container(
  height: g,
  width: 1.5*g,
  color: Colors.red,
);
Widget beyazdaire = Container(
  width: 0.5*g,
  height: 0.5*g,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular( 100),
  ),
);
Widget kirmizidaire = Container(
  width: 0.4*g,
  height: 0.4*g,
  decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(100),
  ),
);
Widget yildiz = RotationTransition(
  turns: AlwaysStoppedAnimation(0.35),
  child:   Icon(
    Icons.star,
    color: Colors.white,
    size: 0.25*g,
  ),
);
