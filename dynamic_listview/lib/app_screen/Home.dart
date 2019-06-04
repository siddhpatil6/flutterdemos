import 'package:flutter/material.dart';


  List<String> getListElements()
  {
   var items=List<String>.generate(10, (counter)=>"Item $counter");
   return items;
  }


  Widget getDynamicListView() {
  var listItems = getListElements();
  var listView = ListView.builder(itemCount: listItems.length,
  itemBuilder: (context,index) {
    return ListTile(
      title: Text(listItems[index]),
      subtitle: Text("This is Subtitle, My Name is Siddhant Patil"),
      selected: true,
      dense: true,
      trailing: CircleAvatar(
        backgroundImage: NetworkImage("https://auto.ndtvimg.com/car-images/medium/renault/kwid/renault-kwid.jpg?v=1_1"),
      ),
      onTap: (){
        debugPrint("Selected ${listItems[index]}");
        SnackBar snackBar=new SnackBar(
            content: new Text("Selected ${listItems[index]}"
            ),
          action: SnackBarAction(label: "UNDO", onPressed: (){
            debugPrint("undo the operation..");
          }),

        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
    );
  }
  );

  return listView;
}