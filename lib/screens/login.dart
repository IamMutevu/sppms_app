import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginFormState();
  }

}

class _LoginFormState extends State<LoginForm>{

  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
      Padding(
      padding: EdgeInsets.only(top: 70.0),
          child: getImageAsset()
      ),

         Padding(
           padding: EdgeInsets.only(top: 50.0),
           child: TextField(
             decoration: InputDecoration(
                 labelText: 'Email',
                 hintText: 'Enter a valid email address',
             ),
             onSubmitted: (String userInput){
               email = userInput;
             },
           )
         ),

      Padding(
        padding: EdgeInsets.only(top: 5.0),
          child: TextField(
            decoration: InputDecoration (
              labelText: 'Password',
              hintText: 'Enter password',

            ),
            onSubmitted: (String userInput){
              password = userInput;
            },
          )),
    Padding(
    padding: EdgeInsets.only(top: 20.0),
    child: RaisedButton(
              child: Text('Login'),
              onPressed: (){

              },
            )
    ),

        ],
      ),
    );
  }

  Widget getImageAsset(){

    AssetImage assetImage = AssetImage('images/logo.png');
    Image image = Image(image: assetImage, width: 125.0, height: 125.0,);

    return Container(child: image, margin: EdgeInsets.all(20.0),);
  }

}