import 'package:flutter/material.dart';
import 'package:mecanicasystemappclientes/telas/Login.dart';
import 'package:mecanicasystemappclientes/utils/RouteGenerator.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.grey[50],
    ),
    title: "msCliente",
    home: Login(),
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
