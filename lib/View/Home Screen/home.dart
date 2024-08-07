import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:untitled/View/Home%20Screen/component/catList.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen',style: TextStyle(fontWeight: FontWeight.w500),),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Icon(CupertinoIcons.bell),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      // body: FutureBuilder(future: Provider.of(context,listen:false).fromMap, builder: (context, snapshot) {
      //   if(snapshot.hasData)
      //     {
      //       ProductModal? product = snapshot.data;
      //       return Column(
      //         children: [
      //
      //         ],
      //       );
      //     }
      //   else
      //     {
      //       return Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      // },),

      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xfff0f1f3),
                  borderRadius: BorderRadius.circular(15)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      'See all',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      CupertinoIcons.right_chevron,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      catList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 14),
                        child: Column(
                          children: [
                            Container(
                              height: 86,
                              width: 86,
                              decoration: BoxDecoration(
                                color: Color(0xfff0f1f3),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(catList[index]['img']),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              catList[index]['cat'],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text(
                  'Flash sale',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      'See all',
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      CupertinoIcons.right_chevron,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 176,
                      decoration: BoxDecoration(
                        color: Color(0xfff0f1f3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(height: 7,),
                    Text('Apple',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 23),),
                    Text('Price',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24),)
                  ],
                )
                // SizedBox(width: 22,),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Row(
          children: [
            SizedBox(width: 34,),
            Row(
              children: [
                Icon(CupertinoIcons.home,size: 37,),
              ],
            ),
            SizedBox(width: 48,),
            Row(
              children: [
                Icon(CupertinoIcons.cart,size: 37,),
              ],
            ),
            SizedBox(width: 48,),
            Row(
              children: [
                Icon(Icons.favorite_border,size: 37,),
              ],
            ),
            SizedBox(width: 48,),
            Row(
              children: [
                Icon(CupertinoIcons.profile_circled,size: 37,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class Screen extends StatelessWidget {
//   const Screen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Consumer<JocksProvider>( moto J
//         builder: (context, jocksProvide nano jr, child) {
//        modal   Jocks?   var jocks =  jocksProvider.jocks;
//           if (jocks == null) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (jocks.value.isEmpty) {
//             // Handle the case where the 'value' field is empty
//             return Center(
//               child: Text('No data available.'),
//             );
//           } else {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 200,
//                   width: 200,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: NetworkImage(jocks.icon_url),
//                     ),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 100,
//                         width: 300,
//                         alignment: Alignment.center,
//                         child: Text(jocks.value)),
//                   ],
//                 )
//               ],
//             );
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Provider.of<JocksProvider>(context, listen: false).fromMap();
//         },
//         child: Icon(Icons.refresh),
//       ),
//     );
//   }
// }
