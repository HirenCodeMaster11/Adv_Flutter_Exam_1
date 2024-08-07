import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen',style: TextStyle(fontWeight: FontWeight.w500),),
        centerTitle: true,
        leading: Icon(CupertinoIcons.left_chevron),
        actions: [
          Icon(Icons.favorite_border),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xfff0f1f3),
              // image: DecorationImage(
              //   fit: BoxFit.cover,
              //   image: NetworkImage(''),
              // ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16,top: 16),
            child: Text('Name',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Text('Cost',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16,top: 10),
            child: Text('Description',style: TextStyle(fontSize: 32,fontWeight:FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16,top: 10),
            child: Text('Description',style: TextStyle(fontSize: 21,fontWeight:FontWeight.w500,color: Colors.grey),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16,top: 10),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffC3E703),
                borderRadius: BorderRadius.circular(18),
              ),
              alignment: Alignment.center,
              child: Text('Add to cart',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500),),
            ),
          ),
        ],
      ),
    );
  }
}
