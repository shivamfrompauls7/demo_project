import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(

        child: Container(
            alignment: Alignment.center,
            color: Colors.amberAccent,
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.only(left: 5.0,top:10.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      " Hello ",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      "Home",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                      ),
                    )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      " Hello",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      "Home",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                      ),
                    )),
                  ],
                ),
                DpImageAsset(),
                LoginButton()
              ],
            )));
  }
}


class DpImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage ('images/dp.png');
        Image image = Image(image: assetImage);
      return Container(child: image,);
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 200.0,
        height: 50.0,
      child: RaisedButton(
          color: Colors.amber,
         child: Text("Login",
         style: TextStyle(
          fontSize: 20.0,
          color:Colors.white,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700
        ),
        ),
        elevation: 6.0,
        onPressed: () => login(context)
         ),
    );
  }
}

void login(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Log In Successfully"),
    content: Text("enjoy ur profile"),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog);
}


