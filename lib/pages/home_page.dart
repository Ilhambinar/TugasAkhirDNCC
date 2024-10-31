import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ta/config/color_config.dart';
import 'package:ta/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 18.0,
            vertical: 8.0,
          ),
          children: [
            Row(
              children: [
                const Icon(
                  Icons.sunny,
                  color: Colors.amber,
                ),
                const SizedBox(width: 9),
                const Text('Good Morning'),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    
                  },
                  icon: const Icon(Icons.shopping_cart),
                )
              ],
            ),
            const Text(
              'Burjo Fans',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 17),
            const Text(
              'Featured Product',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:[
                  Container(
                    height: 150,
                    width: 220,
                    decoration: const BoxDecoration(
                     image: DecorationImage(
                      image: AssetImage('assets/1.jpeg'),
                      fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                  Container(
                    height: 150,
                    width: 220,
                    decoration: const BoxDecoration(
                     image: DecorationImage(
                      image: AssetImage('assets/2.jpeg'),
                      fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                  Container(
                    height: 150,
                    width: 220,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage('assets/3.jpeg'),
                      fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)
                    ),
                  ),
                ),
                ] 
              ),
            ),
            Row(
              children: [
                const Text('Category Product',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                ),
                const Spacer(),
                TextButton(onPressed: () {

                },
                child: const Text('View All',
                style:TextStyle(
                  color: ColorConfig.primarycolor
                ),
                ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, 
            child:Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConfig.primarycolor
                  ),
                  onPressed: (){},
                child:const Text('Breakfast',
                style: TextStyle(
                  color: Colors.white,
                )),
                ),
                SizedBox(width: 6),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300]
                  ),
                  onPressed: (){},
                child:const Text('Lunch',
                style: TextStyle(
                  color: Colors.black,
                )),
                ),
                SizedBox(width: 6),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300]
                  ),
                  onPressed: (){},
                child:const Text('Dinner',
                style: TextStyle(
                  color: Colors.black,
                )),
                ),
                SizedBox(width: 6),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300]
                  ),
                  onPressed: (){},
                child:const Text('Snack',
                style: TextStyle(
                  color: Colors.black,
                )),
                ),
              ],
            ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                const Text('Popular Recipe',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
                const Spacer(),
                TextButton(onPressed: (){},
                child: const Text('View All',
                style: TextStyle(
                  color: ColorConfig.primarycolor,
                )))
              ],
            ),
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 0.88,
                ),
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder:(context) => const DetailPage(),
                          ),
                          );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: const Offset(0,3),
                          )
                        ] 
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 120,
                            decoration: const BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage('assets/1.jpeg'),
                        fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8)
                      ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Text('Telor Dadar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 10,),
                          const Row(
                            children: [
                              Icon(Icons.star,color: Colors.amber,),
                              Text('4,5'),
                              Spacer(),
                              Icon(Icons.favorite,color: Colors.red,)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: const Offset(0,3),
                        )
                      ] 
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 120,
                          decoration: const BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage('assets/2.jpeg'),
                      fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8)
                    ),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        const Text('Hamburger',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(height: 10,),
                        const Row(
                          children: [
                            Icon(Icons.star,color: Colors.amber,),
                            Text('5'),
                            Spacer(),
                            Icon(Icons.favorite,color: Colors.red,)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: const Offset(0,3),
                        )
                      ] 
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 120,
                          decoration: const BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage('assets/4.jpeg'),
                      fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8)
                    ),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        const Text('Mie Ayam',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(height: 10,),
                        const Row(
                          children: [
                            Icon(Icons.star,color: Colors.amber,),
                            Text('5'),
                            Spacer(),
                            Icon(Icons.favorite,color: Colors.red,)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: const Offset(0,3),
                        )
                      ] 
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 120,
                          decoration: const BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage('assets/10.jpg'),
                      fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8)
                    ),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        const Text('Indomie',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(height: 10,),
                        const Row(
                          children: [
                            Icon(Icons.star,color: Colors.amber,),
                            Text('5'),
                            Spacer(),
                            Icon(Icons.favorite,color: Colors.red,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
        ),
    );
  }
}