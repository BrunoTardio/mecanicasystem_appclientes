
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Firestore db = Firestore.instance;
    db.collection("usuarios")
        .document("001")
        .setData({
      "nome": "Bruno",
      "idade":"30"
    });


    return Container();
  }
}

