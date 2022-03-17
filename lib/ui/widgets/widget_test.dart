import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl_browser.dart';

class CustomInputDatetime extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CustomInputDatetime();
  }
}

class _CustomInputDatetime extends State<CustomInputDatetime>{
  TextEditingController dateinput = TextEditingController(); 
  //text editing controller for text field
  
  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration( 
          icon: Icon(
            Icons.calendar_today
          ),
        ),
        initialValue: dateinput.text,
        readOnly: true,
        onTap: () {
          dynamic pickedDate = showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
              lastDate: DateTime(2101),
          );
          
          if(pickedDate != null ){
              print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
              String formattedDate = pickedDate; 
              print(formattedDate); //formatted date output using intl package =>  2021-03-16
                //you can implement different kind of Date Format here according to your requirement

              setState(() {
                  dateinput.text = formattedDate; //set output date to TextField value. 
              });
          }else{
              print("Date is not selected");
          }
        },
      ),
    );
  }
}