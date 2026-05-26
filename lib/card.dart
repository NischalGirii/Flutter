import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  final List<Map<String, String>> products = [
  {
    'image': 'assets/images/bag.png',
    'title': "Fjallraven - Foldsack No.1 Backpack, Fits 15 Laptop",
    'category': "men's clothing",
    'rating': "4.1 (259)",
    'price': "\$109.95"
  },
  {
    'image': 'assets/images/shirt.png',
    'title': "Mens Casual Premium Slim Fit T-Shirts",
    'category': "men's clothing",
    'rating': "4.1 (259)",
    'price': "\$22.30"
  },
  {
    'image': 'assets/images/jacket.png',
    'title': "Mens Cotton Jacket",
    'category': "men's clothing",
    'rating': "4.7 (250)",
    'price': "\$55.99"
  },
  {
    'image': 'assets/images/bracelet.png',
    'title': "John Hardy Women's Legends Naga Gold & Silver Dragon Bracelet",
    'category': "jewelery",
    'rating': "4.6 (400)",
    'price': "\$695.00"
  },
  {
    'image': 'assets/images/polo.png',
    'title': "Solid Gold Petite Micropave with White Topaz",
    'category': "jewelery", // Fixed your typo from "jewjlery"
    'rating': "4.6 (70)",
    'price': "\$168.00"
  },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: Text("All Products",
        style: TextStyle(fontWeight: FontWeight.bold, 
        fontSize: 20),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
         scrollDirection: Axis.vertical,
         itemCount: products.length,
         separatorBuilder: (context, index) => const Divider(),
         itemBuilder: (context, index) {
           final product = products[index];
           return itemWidget(
            product['image']!,
            product['title']!,
            product['category']!,
            product['rating']!,
            product['price']!,
            
          );
         },
        ),
      ),
    );
  }
  Widget itemWidget(String imagePath, String text, String category, String rating, String price){
      return Row(
        
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Image.asset(imagePath, width: 100, height:100, fit: BoxFit.cover),
          SizedBox(width: 30,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),),
                Text(category),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 60,),
                    Icon(Icons.star,
                    color: Colors.amber,),
                     Icon(Icons.star,
                    color: Colors.amber,),
                     Icon(Icons.star,
                    color: Colors.amber,),
                     Icon(Icons.star,
                    color: Colors.amber,),
                     Icon(Icons.star_half,
                    color: Colors.amber,),
                     Text(rating),
                  ],
                ),
               
               
              ],
            ),
          ),
          // Spacer(),
         Column(
           children: [
            SizedBox(height: 30,),
             Text(price,style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold
             ),),
             SizedBox(height: 10,),
             ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(4),
                )
              ),
              child: Icon(Icons.shopping_cart_outlined),
              onPressed: () {},
             ),
           ],
         ),
         
         
        ],
      );
  }
}