import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Screen',style: TextStyle(fontWeight: FontWeight.w500),),
        centerTitle: true,
        leading: Icon(CupertinoIcons.left_chevron),
        actions: [
          Icon(Icons.favorite_border),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16,top: 16),
        child: Column(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(17),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Color(0xffF0F1F2),
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Text('name',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
                          Spacer(),
                          Text('cost',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 26)),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0,right: 8),
                              child: Row(
                                children: [
                                  Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle
                                    ),
                                    child: Icon(Icons.remove,color: Colors.white,),
                                  ),
                                  Spacer(),
                                  Text('30',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500),),
                                  Spacer(),
                                  Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle
                                    ),
                                    child: Icon(Icons.add,color: Colors.white,),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          IconButton(onPressed: () {
                            
                          }, icon: Icon(Icons.delete,color: Colors.white,size: 34,)
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffC3E703),
                borderRadius: BorderRadius.circular(18),
              ),
              alignment: Alignment.center,
              child: Text('Checkout',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500),),
            ),
          ],
        ),
      ),
    );
  }
}
