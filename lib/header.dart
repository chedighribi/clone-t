
import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {

  String libelle;
  TextAlign align;
  String? imgPath;
  HeaderButton(this.libelle, {this.align = TextAlign.center, this.imgPath });
  
  Widget selectButtonWidget() {
    if (imgPath != null) {
      return IconButton(onPressed: () {}, icon: Image.asset(this.imgPath!));
    }
    return Text(libelle, textAlign: this.align, style: TextStyle(color: Colors.white),);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(child: selectButtonWidget());
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
              HeaderButton('Nouveau', align: TextAlign.right, imgPath: "assets/pencil.png"),
              HeaderButton('Accueil'),
              HeaderButton('Rechercher', align: TextAlign.left, imgPath: "assets/search.png"),
            ],
          ),
        ),
      );
  }
  
}