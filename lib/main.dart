import 'package:demo/footer.dart';
import 'package:demo/header.dart';
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
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 125,
                        child: Image.network("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("pseudo"),
                                  Text("5 min"),
                                ],
                              ),
                              Text("ici commentaire ici commentaire ici commentaire ici commentaire ici commentaire ici commentaire ici commentaire ici commentaire ici commentaire ici commentaire ici commentaire ici commentaire ")
                            ]
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Répondre"),
                        Text("Retweet"),
                        Text("Favoris"),
                      ],
                    ),
                  )
                ],
              ),
              
            ),
          ),
          FooterWidget()
        ],
      )
    );
  }
}
