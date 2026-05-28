import 'package:flutter/material.dart';

const kBlue = Color(0xFF4A90D9);
const kBlueBg = Color(0xFFDAEBF7);

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const _info = [
    (Icons.person_outline,       'PAB 2026'),
    (Icons.phone_outlined,       '085748235648'),
    (Icons.email_outlined,       'pab2026@gmail.com'),
    (Icons.location_on_outlined, 'Surabaya'),
    (Icons.camera_alt_outlined,  'pab2026'),
  ];

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    const r = 80.0; // radius avatar diperbesar

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [

        // ── Setengah lingkaran ATAS + Avatar overlap ──
        Stack(clipBehavior: Clip.none, children: [
          Container(
            width: w, height: w / 2,
            decoration: const BoxDecoration(
              color: kBlueBg,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(999)),
            ),
            // Teks Profile tepat di tengah bentuk setengah lingkaran
            alignment: Alignment.center,
            child: const SafeArea(
              child: Text('Profile',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black87)),
            ),
          ),
          // Avatar di tengah bawah lengkungan
          Positioned(
            bottom: -r,
            left: w / 2 - r,
            child: const CircleAvatar(
              radius: r,
              backgroundColor: kBlueBg,
              backgroundImage: AssetImage('assets/lloyd_frontera.jpg'),
            ),
          ),
        ]),

        // Ruang untuk avatar overlap
        const SizedBox(height: r + 16),

        // ── Info List ──
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
            itemCount: _info.length,
            separatorBuilder: (_, __) => const Divider(height: 1, color: Color(0xFFEEEEEE)),
            itemBuilder: (_, i) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Row(children: [
                Icon(_info[i].$1, color: kBlue, size: 22),
                const SizedBox(width: 18),
                Text(_info[i].$2, style: const TextStyle(fontSize: 15, color: Colors.black87)),
              ]),
            ),
          ),
        ),

        // ── Setengah lingkaran BAWAH ──
        Container(
          width: w, height: w / 2,
          decoration: const BoxDecoration(
            color: kBlueBg,
            borderRadius: BorderRadius.vertical(top: Radius.circular(999)),
          ),
        ),
      ]),
    );
  }
}