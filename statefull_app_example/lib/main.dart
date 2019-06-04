import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Statefull App Example",
      home: FavoriteCity(),
    )
  );
}

class FavoriteCity extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavoriteCityState();
  }

}
class _FavoriteCityState extends State<FavoriteCity>
{
  String nameCity="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull App Example"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 5,right: 6,top: 5,bottom: 5),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged:(String userInput){
                setState(() {
                  nameCity=userInput;

                });
              } ,
              
            ),
            Padding(padding: EdgeInsets.all(5),
              child: Text("Your next City is $nameCity"),
            ),

          ],
        ),
      ),
    );
  }

}

