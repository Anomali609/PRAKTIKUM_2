import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<String> _images = [
    'assets/ZombieLand.jpg',
    'assets/theboys.jpg',
    'assets/avengers.jpg',
    'assets/from.jpg',
    'assets/TWD.jpg',
    'assets/HR.jpg',
    'assets/JW.jpg',
    'assets/PB.jpg',
    'assets/Interstellar.jpg',
    'assets/MK2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text('PRAKTIKUM PAB',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 20)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: _images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 2 / 3, // ← dari 1 menjadi 2/3
          ),
          itemBuilder: (_, i) => ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              _images[i],
              fit: BoxFit.fitWidth, // ← dari cover menjadi fitWidth
            ),
          ),
        ),
      ),
    );
  }
}