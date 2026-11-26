import 'package:flutter/material.dart';

class Member0467Screen extends StatelessWidget {
  const Member0467Screen({super.key});

  
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
      backgroundColor: const Color(0xFFFAF6F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4E342E),
        foregroundColor: const Color(0xFFFAF6F0),
        title: const Text('PORTFOLIO • 23IT0467',
            style: TextStyle(letterSpacing: 2, fontSize: 15)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                buildMemberPhoto('assets/images/23IT0467.jpg',
                    Icons.person_outline, const Color(0xFF4E342E), 48),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ms. K. H. M. Dewanga',
                          style: TextStyle(
                              fontFamily: 'serif',
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF3E2723))),
                      Text('23IT0467  •  Colombo, Sri Lanka',
                          style: TextStyle(color: Color(0xFF6D4C41))),
                      Text('23it0467@itum.mrt.ac.lk',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Color(0xFF5D4037))),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(color: Color(0xFFBCAAA4), height: 32, thickness: 1.2),
            const Text('ACADEMIC BACKGROUND',
                style: TextStyle(
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4E342E))),
            const SizedBox(height: 8),
            const Text(
              '• National Diploma in Technology (Information Technology) – ITUM\n'
              '• G.C.E. Advanced Level Examination\n'
              '• G.C.E. Ordinary Level Examination',
              style: TextStyle(fontSize: 14.5, height: 1.6),
            ),
            const Divider(color: Color(0xFFBCAAA4), height: 32, thickness: 1.2),
            const Text('SOFT SKILLS',
                style: TextStyle(
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4E342E))),
            const SizedBox(height: 8),
            const Text(
              'Interpersonal Communication, Creative Problem Solving, Teamwork, Attention to Detail',
              style: TextStyle(fontSize: 14.5, height: 1.5),
            ),
            const Divider(color: Color(0xFFBCAAA4), height: 32, thickness: 1.2),
            const Text('SPECIAL TALENTS',
                style: TextStyle(
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4E342E))),
            const SizedBox(height: 8),
            const Text(
              'Creative Writing, Classical Music, and Event Organizing',
              style: TextStyle(fontSize: 14.5, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
