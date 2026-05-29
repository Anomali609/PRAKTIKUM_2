import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<String> _images = [
    'assets/KH1.jpg',
    'assets/KH2.jpg',
    'assets/KH3.jpg',
    'assets/KH4.jpg',
    'assets/KH5.jpg',
    'assets/KH6.jpg',
    'assets/KH7.jpg',
    'assets/KH8.jpg',
    'assets/KH9.jpg',
    'assets/KH10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text('TravelGo',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 20)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [

          // ── Banner ──
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/Logo.jpg', 
              width: double.infinity,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 16),

          // ── Grid ──
          Expanded(
            child: GridView.builder(
              itemCount: _images.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 4 / 3,
              ),
              itemBuilder: (_, i) => ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(_images[i], fit: BoxFit.cover),
              ),
            ),
          ),

        ]),
      ),
    );
  }
}