import 'package:flutter/material.dart';

void main () {
  runApp(
      MaterialApp(
        title: 'Profile Settings',
        home: SIForm(),
        debugShowCheckedModeBanner: false,
      )
  );
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {

  var _Gender = ['Male', 'Female', 'Others'];
  final _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('<   Profile setting'),
      ),

      body: Container(
        margin: EdgeInsets.all(_minimumPadding*2),
        child: ListView(

          children: <Widget>[
             getImageAsset(),
            Padding(
              padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child:TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0)
                )
              ),
            )),
            Padding(
                padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email Id',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  )
              ),
            )),

            Padding(
                padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
              decoration: InputDecoration(
                  labelText: 'Gender',
                  hintText: 'male,female or others',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  )
              ),
            )),
            Padding(
                padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child: TextField( obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  )
              ),
            )),
           Padding(
             padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
             child: Row(

              children: <Widget>[
                Expanded(child: TextField(obscureText: true,
                  decoration: InputDecoration(
                      labelText: ' Confirm Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                )),



              ],
            )),

           Padding(
    padding: EdgeInsets.only(bottom: _minimumPadding, top: _minimumPadding),
    child:Row(children: <Widget>[
    Expanded(
    child: RaisedButton(
    child: Text('Login'),
    onPressed: () {

    }
    ),
    ),

              Expanded(
                child: RaisedButton(
                  child: Text('Reset'),
                  onPressed: () {

                  },
                ),
              )
            ],))

          ],
        ),),
      );
  }

  Widget getImageAsset() {

    AssetImage assetImage =  AssetImage('images/female.png');
    Image image = Image(image: assetImage, width: 125.0, height: 120.0,);

    return Container(child: image, margin: EdgeInsets.all(_minimumPadding * 10),);
  }





}
  
  
