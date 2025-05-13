
import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {

  String libelle;
  TextAlign align;
  HeaderButton(this.libelle, {this.align = TextAlign.center });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text(libelle, textAlign: this.align, style: TextStyle(color: Colors.white),));
  }
}

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
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
      );
  }
  
}