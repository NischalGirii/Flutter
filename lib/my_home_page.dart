import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:ecard/models/products/products.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  
  @override
  void initState(){
    getProduct();
    super.initState();
  }
  
  bool isLoading = false;
  
  List<Products> products = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Product")),

      body: isLoading?CircularProgressIndicator(): Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) {
            return Divider();
          },
          physics: NeverScrollableScrollPhysics(),
          itemCount: products.length,
          itemBuilder: (context, index) {
            var item = products[index];
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                height: 90,
                child: CachedNetworkImage(
                  height: 80,
                  width: 80,
                  imageUrl: item.image??'',
                  progressIndicatorBuilder: (context, url, downloadProgress) => 
                          CircularProgressIndicator(value: downloadProgress.progress),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                            ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.title??'',
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                
                      Text(item.category??''),
                      Row(
                        children: [
                          Icon(Icons.star,
                          color: Colors.amber,),
                          Text("${item.rating!.rate} ${item.rating!.count.toString()}")
                        ],
                      )
                  ],
                ),
              ),
              Column(
                children: [
                  Text("\$ ${item.price.toString()}"),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                  )
                ],
              )
            ],);
          },
        ),
      ),
    );
  }

  Future getProduct() async{

    isLoading = true;
    setState(() {
      
    });
    Dio dio = Dio();

    final response = await dio.get("https://fakestoreapi.com/products");
    print('FakeAPI response ${response}');


    if(response.statusCode==200){
      final List data = response.data;

      products = data.map((json)=>Products.fromJson(json)).toList();
    }
    

    setState(() {
      isLoading = false;
    });
    
  }
  
}
