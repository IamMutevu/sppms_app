import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginFormState();
  }

}

class _LoginFormState extends State<LoginForm>{

  var _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formKey,
        child: Padding(
      padding: EdgeInsets.all(20.0),
      child: ListView(
        children: <Widget>[
      Padding(
      padding: EdgeInsets.only(top: 70.0),
          child: getImageAsset()
      ),

         Padding(
           padding: EdgeInsets.only(top: 50.0),
           child: TextFormField(
             validator: (String value){
               if(value.isEmpty){
                 return "Please enter email";
               // ignore: missing_return
               }
             },
             decoration: InputDecoration(
                 labelText: 'Email',
                 hintText: 'Enter a valid email address',
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(5.0),
               )
             ),
           )
         ),

      Padding(
        padding: EdgeInsets.only(top: 20.0),
          child: TextFormField(
            validator: (String value){
              if(value.isEmpty){
                return "Please enter password";
                // ignore: missing_return
              }
            },
            decoration: InputDecoration (
              labelText: 'Password',
              hintText: 'Enter password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )
            ),
          )),
    Padding(
    padding: EdgeInsets.only(top: 20.0),
    child: RaisedButton(
              child: Text(
                  'Login',
              textScaleFactor: 1.0,
              ),
              onPressed: (){
                if(_formKey.currentState.validate()){
                  print("Okay");
                }
              },
            )
    ),

        ],
      ),
    ));
  }

  Widget getImageAsset(){

    AssetImage assetImage = AssetImage('images/logo.png');
    Image image = Image(image: assetImage, width: 125.0, height: 125.0,);

    return Container(child: image, margin: EdgeInsets.all(20.0),);
  }

}