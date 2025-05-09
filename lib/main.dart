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
      home: MyHomePage(),
    );
  }
}

class HeaderButton extends StatelessWidget {

  String libelle;
  TextAlign align;
  HeaderButton(this.libelle, {this.align = TextAlign.center });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text(libelle, textAlign: this.align, style: TextStyle(color: Colors.white),));
  }
}

class FooterButton extends StatelessWidget {

  String libelle;
  FooterButton(this.libelle);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text(libelle, textAlign: TextAlign.center));
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
          // Header
          Container(
            color: Color(0XFF5880F0),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  HeaderButton('Nouveau', align: TextAlign.right),
                  HeaderButton('Accueil'),
                  HeaderButton('Footer', align: TextAlign.left),
                ],
              ),
            ),
          ),
          // Main
          Expanded(
            child: Container(
              color: Colors.black45,
            ),
          ),
          // Footer
          Container(
            color: Color(0XFF5880F0),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  FooterButton('Fil'),
                  FooterButton('Notification'),
                  FooterButton('Message'),
                  FooterButton('Moi'),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
