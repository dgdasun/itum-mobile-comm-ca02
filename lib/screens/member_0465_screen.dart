import 'package:flutter/material.dart';

class Member0465Screen extends StatelessWidget {
  const Member0465Screen({super.key});

  
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A192F),
        foregroundColor: Colors.amber,
        title: const Text('Executive Bio • 23IT0465'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: const Color(0xFF0A192F),
              padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
              child: Column(
                children: [
                  buildMemberPhoto('assets/images/23IT0465.jpg',
                      Icons.business_center, Colors.amber, 55),
                  const SizedBox(height: 14),
                  const Text('Mr. B. C. M. D. De Silva',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  const Text('23it0465@itum.mrt.ac.lk  •  Panadura, Sri Lanka',
                      style: TextStyle(color: Colors.amberAccent, fontSize: 13)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _timelineStep(
                    year: '2023 – Present',
                    title: 'NDT in Information Technology',
                    detail: 'Institute of Technology, University of Moratuwa',
                  ),
                  _timelineStep(
                    year: 'Secondary Education',
                    title: 'G.C.E. Advanced Level & Ordinary Level',
                    detail: 'Completed with strong analytical foundation',
                  ),
                  _timelineStep(
                    year: 'Core Soft Skills',
                    title: 'Leadership & Strategic Thinking',
                    detail:
                        'Public Speaking, Project Coordination, Team Leadership',
                  ),
                  _timelineStep(
                    year: 'Special Talents',
                    title: 'Sports & Debating',
                    detail: 'Cricket, Table Tennis, and English Debating',
                    isLast: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _timelineStep({
    required String year,
    required String title,
    required String detail,
    bool isLast = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            const CircleAvatar(radius: 8, backgroundColor: Color(0xFF0A192F)),
            if (!isLast)
              Container(width: 2, height: 68, color: Colors.amber.shade700),
          ],
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(year,
                    style: TextStyle(
                        color: Colors.amber.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 12)),
                Text(title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Text(detail, style: TextStyle(color: Colors.grey[700])),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
