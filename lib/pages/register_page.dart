import 'package:flutter/material.dart';
import 'package:ta/config/color_config.dart';
import 'package:ta/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 90,
        ),
        children: [
          const Text('Buat Akun anda',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: ColorConfig.primarycolor
          ),
          ),
          const Text('Silahkan masukan username,email dan kata sandi'),
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
              labelText: 'Username',
              labelStyle: TextStyle(
                color: ColorConfig.primarycolor
              ),
              hintText: 'Masukkan Username',
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
              labelText: 'Kata Sandi',
              labelStyle: TextStyle(
                color: ColorConfig.primarycolor
              ),
              hintText: 'Masukkan Kata Sandi',
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Text('Butuh Bantuan?',
              style: TextStyle(
                color: ColorConfig.primarycolor,
                fontWeight: FontWeight.bold,
              ),)
            ],
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
            onPressed: () {},
          child:  const Text('Daftar',
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
              const Text('Sudah Punya Akun ?'),
              TextButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context){
               return const LoginPage();
                }));
              },
              child:const Text('Masuk',
              style: 
              TextStyle(color: ColorConfig.primarycolor),),
              ),
            ],
          )
        ],
        ),
        ),
    );
  }
}