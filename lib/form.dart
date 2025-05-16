import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  var _formKey = GlobalKey<FormState>();
  void onSubmit(){
      if (_formKey.currentState!.validate()) {
        Navigator.pushNamed(context, "/home-page");
      }
  }

  String? validateEmail(String? value) {
    if (value!.length < 4) {
      return "Veuillez saisir au moins 4 caractéres";
    }
  }
  String? validatePassword(String? value) {
    if (value!.length < 4) {
      return "Veuillez saisir au moins 4 caractéres";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child:
    Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text("Connexion"),
        ),
        TextFormField(
          validator: validateEmail,
          decoration: InputDecoration(labelText: "Email", hintText: 'saisir un email'),),
        TextFormField(
          validator: validatePassword,
          decoration: InputDecoration(labelText: "Mot de passe", hintText: 'saisir un mot de passe'), obscureText: true,),
        Row(children: [
          Checkbox(value: false, onChanged: (value){}),
          Text("Mémoriser mes information")
        ],
        ),
        SizedBox(width: double.infinity,
        child: ElevatedButton(onPressed: onSubmit, child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text("Connexion"),
        )),
        )
      ],
      ),
    ));
  }
}