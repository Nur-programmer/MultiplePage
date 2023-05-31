import 'package:flutter/material.dart';
import 'package:pageview/page1.dart';
import 'package:pageview/page2.dart';
import 'package:pageview/page3.dart';
import 'package:pageview/page4.dart';
import 'package:pageview/page5.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _controller=PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text('Demo Apps'),
          centerTitle: true,
        ),
        body: PageView(
          controller: _controller,
          children: [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
            Page5(),
          ],
        ),
      ),
    );
  }
}
