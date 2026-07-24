import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       

        children: [
          // const Center(
          
            
          // )


          const SizedBox(height: 170),
          Center(
            child: const Text("Welcome back Glad to see you, Again!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), 
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Enter your email",
                border: const OutlineInputBorder(),
                 
              )
            ),
          ),
          
          // const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Enter your password",
                border: const OutlineInputBorder() 
              )
            ),
          ),

          // const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
              ),
              onPressed: () =>print("Login Button Clicked"), 
              child: Text("Login"),
            
              
              ),
          ),
           
            
            const SizedBox(height: 10),

            
            

            // Divider(color: Colors.black, thickness: 2,),
            // Center(child: Text("Or Login with",)),
            // Divider(thickness: 3, color: Colors.black,),

            Row(
              children: <Widget>[
                Expanded(child: Divider(
                  thickness: 1,
                  endIndent: 10,
                  color: Colors.grey,
                ),),
                Text("Or Login with"),
                Expanded(child: Divider(
                  thickness: 1,
                  indent: 10,
                  color: Colors.grey,
                ))
              ],
            ),






            // const SizedBox(height: 20),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                 onPressed: () =>print("Facebook Clicked"), 
                  child: Icon(Icons.facebook, size: 40, color: Colors.blue,),),
              ),
            ),
          
            
            // child: Icon(Image.network(''), size: 40, color:  Colors.red),)),
            // const SizedBox(width: 40,),

            Center(child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
              ),
              onPressed: () =>print("Google clicked"),
             child: Image.asset('assets/images/google.png', height: 30,width: 30,),)),
            
          //   Image.asset('assets/images/Picture1.png',
          // height: 200,
          // width: 150,
          

          // ),



            const SizedBox(height: 20,),
            Center(child: Text("Don't have an account? Register Now"),     
            )

        ],
      ),

    );
  }
}