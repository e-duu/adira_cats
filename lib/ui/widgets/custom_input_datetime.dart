import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Test App",
        home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage>{
  TextEditingController dateinput = TextEditingController(); 
  //text editing controller for text field
  
  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text("DatePicker on TextField"), 
            backgroundColor: Colors.redAccent, //background color of app bar
        ),
        body:Container(
          padding: EdgeInsets.all(15),
          height:150,
          child:Center( 
             child:TextField(
                controller: dateinput, //editing controller of this TextField
                decoration: InputDecoration( 
                   icon: Icon(Icons.calendar_today), //icon of text field
                   labelText: "Enter Date" //label text of field
                ),
                readOnly: true,  //set it true, so that user will not able to edit text
                onTap: () async {
                  await DatePickerDialog(initialDate: DateTime(2022), firstDate: DateTime(2000), lastDate: DateTime(2022));
                  
                  // if(pickedDate != null ){
                  //     print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                  //     String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); 
                  //     print(formattedDate); //formatted date output using intl package =>  2021-03-16
                  //       //you can implement different kind of Date Format here according to your requirement

                  //     setState(() {
                  //        dateinput.text = formattedDate; //set output date to TextField value. 
                  //     });
                  // }else{
                  //     print("Date is not selected");
                  // }
                },
             )
          )
        )
    );
  }
}