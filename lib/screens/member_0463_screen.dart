import 'package:flutter/material.dart';

class Member0463Screen extends StatelessWidget {
  const Member0463Screen({super.key});

  
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
      backgroundColor: const Color(0xFF0D1117),
      appBar: AppBar(
        backgroundColor: const Color(0xFF161B22),
        foregroundColor: Colors.cyanAccent,
        title: const Text('// 23IT0463_PROFILE',
            style: TextStyle(fontFamily: 'monospace', fontSize: 16)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF161B22),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.cyanAccent.withOpacity(0.5)),
              ),
              child: Row(
                children: [
                  buildMemberPhoto('assets/images/23IT0463.jpg',
                      Icons.terminal, Colors.cyanAccent, 42),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mr. G. D. S. H. Chandrawansha',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 4),
                        Text('ID: 23IT0463  |  ITUM',
                            style: TextStyle(
                                color: Colors.cyanAccent,
                                fontFamily: 'monospace')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.35,
              children: [
                _cyberTile(Icons.location_city, 'ADDRESS', 'Matara, Sri Lanka'),
                _cyberTile(Icons.alternate_email, 'EMAIL',
                    '23it0463@itum.mrt.ac.lk'),
                _cyberTile(
                    Icons.school, 'QUALIFICATIONS', 'NDT in IT, G.C.E. A/L & O/L'),
                _cyberTile(Icons.sports_esports, 'TALENTS',
                    'Chess, Athletics & Coding'),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF161B22),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('> SOFT_SKILLS',
                      style: TextStyle(
                          color: Colors.cyanAccent,
                          fontFamily: 'monospace',
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                    '• Critical Thinking & Problem Solving\n'
                    '• Agile Team Collaboration\n'
                    '• Technical Troubleshooting\n'
                    '• Decision Making under Pressure',
                    style: TextStyle(color: Colors.white70, height: 1.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cyberTile(IconData icon, String title, String value) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF161B22),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.cyanAccent.withOpacity(0.25)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.cyanAccent, size: 22),
          const SizedBox(height: 8),
          Text(title,
              style: const TextStyle(
                  color: Colors.cyanAccent,
                  fontSize: 11,
                  fontFamily: 'monospace')),
          const SizedBox(height: 4),
          Text(value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white, fontSize: 12.5)),
        ],
      ),
    );
  }
}
