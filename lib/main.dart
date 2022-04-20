
import 'package:flutter/material.dart';
import 'package:regfrome/RegFrom/RegFrom.dart';

void main()
{
  runApp(MyRegFrom());
}

class MyRegFrom extends StatelessWidget {
  const MyRegFrom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyRegFromm(),


    );
  }
}
