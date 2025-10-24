import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Flutter',
      home: Myhome(),
    );
  }
}

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Flutter App'),
        backgroundColor: const Color.fromARGB(255, 105, 194, 239),
        actions: [
          Icon(Icons.person, color: Colors.blue),
          SizedBox(width: 20),
          Icon(Icons.account_tree),
          SizedBox(width: 20),
          Icon(Icons.ac_unit),
          SizedBox(width: 20),
          Icon(Icons.home),
          SizedBox(width: 20),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Selamat datang di aplikasi demo flutter'),
            Icon(Icons.flutter_dash, size: 50),
          ],
        ),
      ),
    );
  }
}
