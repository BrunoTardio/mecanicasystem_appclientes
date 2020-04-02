
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async{

    
      runApp(MyApp());

      FirebaseAuth auth = FirebaseAuth.instance;

      String email = "brunotardiosi@gmail.com";
      String senha = "123456";

      auth.createUserWithEmailAndPassword(email: email, password: senha)
          .then((firebaseUser){
        print("novo usuario : email "+ firebaseUser.user.email);
      }).catchError((erro){
        print(" AQUI erro "+ erro.toString());
      });
}

class MyApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

