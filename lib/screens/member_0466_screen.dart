import 'package:flutter/material.dart';

class Member0466Screen extends StatelessWidget {
  const Member0466Screen({super.key});

  
Widget buildMemberPhoto(String assetPath, IconData fallbackIcon, Color color, double radius) {
  return ClipOval(
    child: Image.asset(
      assetPath,
      width: radius * 2,
      height: radius * 2,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          width: radius * 2,
          height: radius * 2,
          color: color.withOpacity(0.15),
          child: Icon(fallbackIcon, size: radius, color: color),
        );
      },
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F1),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: const Text('Mr. U. B. U. A. Deshapriya'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.deepOrange, Colors.orangeAccent],
                ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  buildMemberPhoto('assets/images/23IT0466.jpg',
                      Icons.person, Colors.deepOrange, 45),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mr. U. B. U. A. Deshapriya',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold)),
                        Text('Reg No: 23IT0466',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: _bentoBox(
                    color: const Color(0xFFFFE0B2),
                    title: 'Location',
                    body: 'Gampaha, Sri Lanka',
                    icon: Icons.home_work,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _bentoBox(
                    color: const Color(0xFFFFCCBC),
                    title: 'Email',
                    body: '23it0466@itum.mrt.ac.lk',
                    icon: Icons.mail,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            _bentoBox(
              color: const Color(0xFFFFF3E0),
              title: 'Academic Qualifications',
              body:
                  '• National Diploma in Technology (IT) – ITUM\n• G.C.E. Advanced Level & Ordinary Level',
              icon: Icons.workspace_premium,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _bentoBox(
                    color: const Color(0xFFFFE082),
                    title: 'Soft Skills',
                    body: 'Teamwork, Adaptability, Time Management',
                    icon: Icons.handshake,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _bentoBox(
                    color: const Color(0xFFFFAB91),
                    title: 'Special Talents',
                    body: 'Photography, Swimming & Video Editing',
                    icon: Icons.camera_alt,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _bentoBox({
    required Color color,
    required String title,
    required String body,
    required IconData icon,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.deepOrange.shade800),
          const SizedBox(height: 8),
          Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange.shade900)),
          const SizedBox(height: 4),
          Text(body, style: const TextStyle(fontSize: 13, height: 1.4)),
        ],
      ),
    );
  }
}
