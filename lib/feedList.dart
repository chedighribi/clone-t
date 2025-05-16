import 'package:demo/card.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Post {
  int id;
  String author;
  String message;

  Post(this.id, this.author, this.message);
  static Post fromJson(Map<String, dynamic> json) {
    return Post(json['id'], json['author'], json['message']);
  }
}
class FeedListWidget extends StatefulWidget {
  @override
  State<FeedListWidget> createState() => _FeedListWidgetState();
}

class _FeedListWidgetState extends State<FeedListWidget> {
  List<Post> posts = [];
  void callPostApi() async {
    var response = await http.get(Uri.parse("https://raw.githubusercontent.com/Chocolaterie/EniWebService/main/api/tweets.json"));
   if (response.statusCode == 200) {
     var json = convert.jsonDecode(response.body);
     setState(() {
       posts = List<Post>.from(json.map((jsonPost) => Post.fromJson(jsonPost)));
     });
   }
  }
  @override
  Widget build(BuildContext context) {
return  Column(
  children: [
    SizedBox( width: double.infinity, child:
      ElevatedButton(onPressed: callPostApi, child: Text("Rafraichir"))
      ),
    Expanded(
      child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {
            return CardSocial(posts[index]);
          }
      ),
    ),
  ],
);
  }
}