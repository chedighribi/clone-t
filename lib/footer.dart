import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {

  String libelle;
  FooterButton(this.libelle);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text(libelle, textAlign: TextAlign.center));
  }
}

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
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
      );
  }

}