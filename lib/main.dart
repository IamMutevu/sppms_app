import 'package:flutter/material.dart';
import 'package:sppms/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "SPPMS",
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Center(
          child: LoginForm(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

}
