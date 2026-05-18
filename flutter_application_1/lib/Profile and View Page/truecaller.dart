import 'package:flutter/material.dart';

class Truecaller extends StatefulWidget {
  const Truecaller({super.key});

  @override
  State<Truecaller> createState() => _TruecallerState();
}

class _TruecallerState extends State<Truecaller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("truecaller",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),),
            CircleAvatar(
              // child: Image.asset("assets/person"),
                child: Icon(Icons.person),
            )
           
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Text("Welcome,"),
            Text("Alex",
            style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 30,
            ),),
            SearchBar(
              leading: Icon(Icons.search) ,
              hintText: 'Search a number',
              onChanged: (value) {
                
              },
            ),
            SizedBox(height: 20,),
            Text("Recents",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),

            recentsWidget(Icons.remove_circle_outline_outlined, "Scammer"),

            SizedBox(height: 20,),
            //  Text("Discover",
            // style: TextStyle(
            //   fontSize: 16,
            //   fontWeight: FontWeight.bold,
            // ),),
            // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            // discoverWidget(Icons.person_add_alt, "Who viewed my profile"),
            // discoverWidget(Icons.sms, 'SMS FIltering'),
            // discoverWidget(Icons.wallet, 'Announcements'),
          
            // ],),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
              
            //   discoverWidget(Icons.group, "Community"),
              
            // discoverWidget(Icons.report_gmailerrorred_rounded, "How to report calls")
            // ],)


            Text(
              "Discover",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Row 1: Three Items
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align to left side
              children: [
                discoverWidget(Icons.person_add_alt, "Who viewed my profile"),
                const SizedBox(width: 16), // Fixed spacing between items
                discoverWidget(Icons.sms, 'SMS Filtering'),
                const SizedBox(width: 16),
                discoverWidget(Icons.wallet, 'Announcements'),
              ],
            ),

            const SizedBox(height: 20), // Spacing between rows

            // Row 2: Two Items + Invisible Spacer
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Keep same alignment behavior
              children: [
                discoverWidget(Icons.group, "Community"),
                const SizedBox(width: 16),
                discoverWidget(Icons.report_gmailerrorred_rounded, "How to report calls"),
                const SizedBox(width: 16),
                
                // This empty box takes up the exact space of a 3rd widget 
                // to keep the first two pushed nicely to the left side
                const SizedBox(width: 100), 
              ],
            ),
             

             Container(
              height: 60,
              
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(16),

              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.home,
                  color: Colors.blue,
                  ),
                  Icon(Icons.security),
                  Icon(Icons.assessment_outlined),
                  Icon(Icons.payment)

                ],
              ),
             )
          ],
        ),
      ),
     
    );
  }
  Widget recentsWidget(IconData icon, String title){
    return 
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(

          children: [
            CircleAvatar(
              maxRadius: 20,
              backgroundColor: Colors.red[200],
              child: Icon(icon, size: 30,)),
            const SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                Row(
                  children: [
                    
                    Icon(Icons.search_sharp,size: 20,),
                     Text("(833)          .10:36 AM"),
                  ],
                ),

              ],
            ),
           
            Spacer(),
            Icon(Icons.arrow_back,)
          ],
         ),
         
      );
    
  }


  //  Widget discoverWidget(IconData icon, String title){
  //           return Container(
  //             height: 150,
  //             width: 100,
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(16),
  //             ),
  //             child: Column(
  //               children: [
  //                   // Icon(icon, size: 30),
  //                   // const SizedBox(height: 5,),
  //                   // Text(title),
  //                   Card(
  //                     child: 
  //                     CircleAvatar(
  //                       maxRadius: 30,
  //                       child: Icon(icon,size: 30,),
  //                     ),
  //                   ),
  //                 Text(title),
  //               ],
  //             ),
              
  //           );
            
  //         }

  Widget discoverWidget(IconData icon, String title) {
  return SizedBox(
    width: 100, // Explicit width forces uniform spacing in Rows
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 85,
          width: 85,
          decoration: BoxDecoration(
            color: Colors.grey[300], // Light purple background
            borderRadius: BorderRadius.circular(24),
          ),
          child: Icon(
            icon,
            size: 32,
            color: const Color(0xFF4A377D),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
}