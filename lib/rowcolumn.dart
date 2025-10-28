import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Flutter',
      home: Myhome(),
    );
  }
}

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  // 🔹 Fungsi reusable untuk membuat kotak berlabel
  Widget labeledBox(
    String label, {
    Color? color,
    double? width,
    double? height,
  }) {
    return Container(
      width: width ?? 50,
      height: height ?? 50,
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color ?? Colors.teal,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black12),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Flutter App'),
        backgroundColor: const Color.fromARGB(255, 105, 194, 239),
        actions: const [
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            //  Bagian ROW (Horizontal)
            const Text(
              "Row Horizontal (→)",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 182, 214, 241),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  labeledBox("A", color: Colors.red, width: 50, height: 50),
                  const SizedBox(width: 10),
                  labeledBox("B", color: Colors.blue, width: 50, height: 50),
                  const SizedBox(width: 10),
                  labeledBox("C", color: Colors.yellow, width: 50, height: 50),
                ],
              ),
            ),

            const SizedBox(height: 40),

            //  Bagian COLUMN (Vertical)
            const Text(
              "Column Vertical (↓)",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 182, 214, 241),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  labeledBox("A", color: Colors.red, width: 50, height: 50),
                  const SizedBox(height: 10),
                  labeledBox("B", color: Colors.blue, width: 50, height: 50),
                  const SizedBox(height: 10),
                  labeledBox("C", color: Colors.yellow, width: 50, height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
