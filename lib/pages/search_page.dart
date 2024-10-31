import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ta/config/color_config.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            const Center(
              child: Text('Search Page',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            const SizedBox(height: 16,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: ColorConfig.primarycolor,
                  )
                ),
              ),
            ),
            const SizedBox(height: 20,),
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
            const Row(
              children: [
                Text('Popular Recipes',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Spacer(),
                Text('View All'),
              ],
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0.5,
                          blurRadius: 0,
                          offset: const Offset(0,1),
                        ),
                      ] ,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                      image: const DecorationImage(
                      image: AssetImage('assets/1.jpeg'),
                      fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(10),
                      ),
                      ),
                      SizedBox(height: 1,),
                      const Text('Telor Dadar',style: 
                      TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      )
                      ),
                    ],
                  ),
                  ),
                  SizedBox(width: 13,),
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0.5,
                          blurRadius: 0,
                          offset: const Offset(0,1),
                        ),
                      ] ,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                      image: const DecorationImage(
                      image: AssetImage('assets/2.jpeg'),
                      fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(10),
                      ),
                      ),
                      SizedBox(height: 1,),
                      const Text('Hamburger',style: 
                      TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      )
                      ),
                    ],
                  ),
                  ),
                  SizedBox(width: 13,),
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0.5,
                          blurRadius: 0,
                          offset: const Offset(0,1),
                        ),
                      ] ,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                      image: const DecorationImage(
                      image: AssetImage('assets/4.jpeg'),
                      fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(10),
                      ),
                      ),
                      SizedBox(height: 1,),
                      const Text('Mie Ayam',style: 
                      TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      )
                      ),
                    ],
                  ),
                  ),
                  SizedBox(width: 13,),
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0.5,
                          blurRadius: 0,
                          offset: const Offset(0,1),
                        ),
                      ] ,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                      image: const DecorationImage(
                      image: AssetImage('assets/10.jpeg'),
                      fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(10),
                      ),
                      ),
                      SizedBox(height: 1,),
                      const Text('Indomie',style: 
                      TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      )
                      ),
                    ],
                  ),
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 20,),
            const Row(children: [
                Text('Editor Choices',
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ) ,
                ),
                Spacer(),
                Text('View All')
            ],
            ),
            const Card(
              margin: EdgeInsets.only(top:10),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/5.jpeg'),
                  maxRadius: 30,
                ),
                title: Text('Kue',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                subtitle: Text('Snack'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(top:10),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/5.jpeg'),
                  maxRadius: 30,
                ),
                title: Text('Kue',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                subtitle: Text('Snack'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(top:10),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/5.jpeg'),
                  maxRadius: 30,
                ),
                title: Text('Kue',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                subtitle: Text('Snack'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(top:10),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/5.jpeg'),
                  maxRadius: 30,
                ),
                title: Text('Kue',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                subtitle: Text('Snack'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        )
        ),
    );
  }
}