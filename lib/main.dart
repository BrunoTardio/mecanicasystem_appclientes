import 'package:flutter/material.dart';
import 'file:///C:/Users/bruno/AndroidStudioProjects/Flutter/mecanicasystem_appclientes/lib/telas/login/Login.dart';
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
