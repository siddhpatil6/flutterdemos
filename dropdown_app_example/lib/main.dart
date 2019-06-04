import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Dropdown Example",
      home: DrowpDownWidget(),


    )
  );


}
 class DrowpDownWidget extends StatefulWidget
 {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DropDownState();
  }

 }
 class DropDownState extends State<DrowpDownWidget>
 {

   var _current_selected_item="Rupees";
   var _currencies=["Rupees","Dollar","Pound"];

  void _dropdownSelected(String newSelectedText)
  {
    setState(() {
      this._current_selected_item=newSelectedText;

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropwdown Example"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(6),
              child:  DropdownButton<String>(items: _currencies.map((String dropdown){
                return DropdownMenuItem<String>(
                  value: dropdown,
                  child: Text(dropdown),
                );
              }).toList(),onChanged:(String newSelectedText)
              {
                _dropdownSelected(newSelectedText);


              },
              value: this._current_selected_item,),




          ),

          ],
        ),
    ),
    );
  }

 }