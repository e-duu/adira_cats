import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {

  final List items;
  final String hintText;
  
  const CustomDropdown({
    Key? key,
    required this.items,
    required this.hintText,
  }) : super(key: key);
  
  @override
  Custom_DropdownState createState() => Custom_DropdownState();
}
  
class Custom_DropdownState extends State<CustomDropdown> {
    
  // Initial Selected Value
  String? dropdownvalue;

  @override
  Widget build(BuildContext context) {

    // List of items in our dropdown menu
    var items = [    
      for (var i = 0; i < widget.items.length; i++) '${widget.items[i]}',
    ];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 48,
              margin: EdgeInsets.symmetric(
                horizontal: 36
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),borderRadius: BorderRadius.circular(8)
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    
                  hint: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 18
                    ),
                    child: Text(
                      widget.hintText,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  
                  // Initial Value
                  value: dropdownvalue,
                  
                  // Down Arrow Icon
                  icon: Container(
                    margin: EdgeInsets.only(
                      right: 18
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_down
                    ),
                  ),
                    
                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 18
                        ),
                        child: Text(
                          items,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) { 
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}