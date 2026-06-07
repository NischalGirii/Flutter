import 'package:flutter/material.dart';

class VisibilityToggleState extends StatefulWidget {
  const VisibilityToggleState({super.key});

  @override
  State<VisibilityToggleState> createState() => _VisibilityToggleStateState();
}

class _VisibilityToggleStateState extends State<VisibilityToggleState> {

  bool _isHidden = true;
  bool _isExpanded = false;

  final String text = "Hello This is a practise text\n"
   "This is a random text1\n"
    "This is a randome text2\n"
     "This is a random text3\n"
     "This is line five";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [
          SizedBox(height: 40,),

          Text(text, 
          maxLines: _isExpanded ? null : 2 ,
          overflow: _isExpanded ?
           TextOverflow.visible : TextOverflow.ellipsis,),

          SizedBox(height: 10,),

          GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });

            },
            child: Text(
              _isExpanded ?"See Less" : "See More")
            

            ),

          TextField(
            obscureText: _isHidden,
        decoration: InputDecoration(
          labelText: "Password",
          border: OutlineInputBorder(),
          suffixIcon: IconButton(
            onPressed: (
              
            ) {
              setState(() {
                _isHidden = !_isHidden ;

              });
            //  _isHidden = !_isHidden ; => there is no refreshing of the page so the change is not apply we use setState()

            }, icon: _isHidden ?
            Icon(Icons.visibility) : Icon(Icons.visibility_off)


            
            )
        ),
      ),

      
      


      ],
      )
    );
  }
}