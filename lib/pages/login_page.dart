import 'package:flutter/material.dart';
import 'package:ta/config/color_config.dart';
import 'package:ta/pages/home_page.dart';
import 'package:ta/pages/main_page.dart';
import 'package:ta/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea
      (child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 90,
        ),
        children: [
          const Text('Selamat Datang',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: ColorConfig.primarycolor
          ),
          ),
          const Text('Silahkan masukan email dan pasword'),
          const SizedBox(height:40),
          const TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.grey
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: ColorConfig.primarycolor
                )
              ),
              labelText: 'Email',
              labelStyle: TextStyle(
                color: ColorConfig.primarycolor
              ),
              hintText: 'Masukkan Email',
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            obscureText:true,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.grey
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: ColorConfig.primarycolor
                )
              ),
              labelText: 'Pasword',
              labelStyle: TextStyle(
                color: ColorConfig.primarycolor
              ),
              hintText: 'Masukkan Pasword',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize:const Size(double.infinity,50),
              backgroundColor: ColorConfig.primarycolor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
              )
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=> const MainPage()));
            },
          child:  const Text('Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            ),
          ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Belum Punya Akun?'),
              TextButton(onPressed: (){
                 Navigator.push(context,MaterialPageRoute(
                builder:(context)=> const RegisterPage() ),);
              },
              child:const Text('Daftar',
              style: TextStyle(
                color: ColorConfig.primarycolor
              ),),
              ),
            ],
          )
        ],
      )),
    );
  }
}