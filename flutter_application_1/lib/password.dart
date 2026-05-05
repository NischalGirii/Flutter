import 'package:flutter/material.dart';

class VisibilityToggleState extends StatefulWidget {
  const VisibilityToggleState({super.key});

  @override
  State<VisibilityToggleState> createState() => _VisibilityToggleStateState();
}

class _VisibilityToggleStateState extends State<VisibilityToggleState> {

  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [

          SizedBox(height: 40,),
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