import 'package:flutter/material.dart';

void main() {
  runApp(const EliteBoutiqueApp());
}

class EliteBoutiqueApp extends StatelessWidget {
  const EliteBoutiqueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'بوتيك النخبة',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Arial', // يمكنك تغيير الخط لاحقاً
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('بوتيك النخبة'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'مرحباً بك في بوتيك النخبة',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(10),
              children: [
                _buildCategoryCard('أزياء رجالية', Icons.man),
                _buildCategoryCard('أزياء نسائية', Icons.woman),
                _buildCategoryCard('ساعات', Icons.watch),
                _buildCategoryCard('عطور', Icons.air),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(String title, IconData icon) {
    return Card(
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50, color: Colors.blueGrey),
          const SizedBox(height: 10),
          Text(title, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
