import 'package:demo/feedList.dart';
import 'package:demo/footer.dart';
import 'package:demo/card.dart';
import 'package:demo/form.dart';
import 'package:demo/header.dart';
import 'package:demo/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => LoginPage(),
        "/home-page": (context) => MyHomePage()
      },
    );
  }
}



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("S-Clone"),
      ),
      body: Column(
        children: [
          HeaderWidget(),
          // Main
          Expanded(
              child:
                FeedListWidget()
            ),
          FooterWidget()
        ],
      )
    );
  }
}
