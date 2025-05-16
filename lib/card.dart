

import 'package:flutter/material.dart';

import 'feedList.dart';

class CardSocial extends StatelessWidget {
  Post post;
  CardSocial(this.post);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                          Text(post.author),
                          Text("5 min"),
                        ],
                      ),
                      Text(post.message)
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
              IconButton(onPressed:() {}, icon: Image.asset("assets/reply.png", height: 20)),
              IconButton(onPressed:() {}, icon: Image.asset("assets/retweet.png", height: 20)),
              IconButton(onPressed:() {}, icon: Image.asset("assets/favorite.png", height: 20)),
            ],
          ),
        )
      ],
    );
  }

}