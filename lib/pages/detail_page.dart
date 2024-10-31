import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text('Detail Page'),
      actions: [
        IconButton(onPressed: () {},
        icon: const Icon(Icons.share),
        ),
        IconButton(onPressed: () {},
        icon: const Icon(Icons.favorite_border_outlined),
        ),
        IconButton(onPressed: () {},
        icon: const Icon(Icons.more_vert),
        ),
      ],
     ),
     body: ListView(
      children: [
        Container(
          height: 220,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/1.jpeg'),
              fit: BoxFit.cover
              ),
          ),
        ),
        SizedBox(height: 16,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Telur Dadar',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ) ,
              ),
              Text('Breakfast',
              style: TextStyle(
                color: Colors.grey,
              ),
              ),
              SizedBox(height: 5,),
              Row(children: [
                Icon(Icons.timelapse),
                SizedBox(width: 2),
                Text('20 Min'),
                SizedBox(width: 10),
                Icon(Icons.attach_money_outlined),
                Text('10'),
                Spacer(),
                Icon(Icons.star,color: Colors.amber,),
                Text('4,5')
              ],
              ),
              Divider(
                color: Colors.grey,
                height: 20,
              ),
              Text('Details',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('Telur Dadar Adalah Makanan Yang Sangat Enak dan Lezat Untuk disantap di pagi hari. telur dadar juga sangat mudah untuk dibuat dan tidak memerlukan waktu yang lama'),
              Text('Ingredient',
              style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ) ,
              ),
              Text('1.Telur\n2.Garam\n3.Merica\n4.Minyak Goreng'),
            ],
          ),
        )
      ],
     ),
    );
  }
}