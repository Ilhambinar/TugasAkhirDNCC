import 'package:flutter/material.dart';
import 'package:ta/config/color_config.dart';
import 'package:ta/pages/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8.0,
            ),
            children: [
              const Center(
              child: Text('Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
              ),
              const SizedBox(height: 16,),
              const CircleAvatar(
                maxRadius: 150,
                backgroundImage: AssetImage('assets/profile.jpeg'),

              ),
              const SizedBox(height: 16,),
              const Card(
                child: Padding(
                  padding:EdgeInsets.all(8.0), 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nama Lengkap',style: 
                      TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )
                      ),
                      Text('Ilham Binar Lazuardi'),
                      SizedBox(height: 8),
                      Text('Nim :',style: 
                      TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Text('A11.2024.15740'),
                      SizedBox(height: 8),
                      Text('Prodi :',style: 
                      TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Text('Teknik Informatika'),
                    ],
                  ),
                  ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()
                  ),
                  );
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConfig.primarycolor,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Keluar',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              ),
              ),
            ],
        ) ),
    );
  }
}