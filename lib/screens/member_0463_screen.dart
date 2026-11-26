import 'package:flutter/material.dart';

class Member0463Screen extends StatelessWidget {
  const Member0463Screen({super.key});

  Widget buildMemberPhoto(
    String assetPath,
    IconData fallbackIcon,
    Color color,
    double radius,
  ) {
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
            child: Icon(
              fallbackIcon,
              size: radius,
              color: color,
            ),
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
        title: const Text(
          '// 23IT0463_PROFILE',
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 16,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Profile Name and Photograph
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF161B22),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.cyanAccent.withOpacity(0.5),
                ),
              ),
              child: Row(
                children: [
                  buildMemberPhoto(
                    'assets/images/23IT0463.jpg',
                    Icons.terminal,
                    Colors.cyanAccent,
                    42,
                  ),

                  const SizedBox(width: 16),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mr. G. D. S. H. Chandrawansha',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          'ID: 23IT0463  |  ITUM',
                          style: TextStyle(
                            color: Colors.cyanAccent,
                            fontFamily: 'monospace',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Address, Email, Qualifications and Talents
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.85,
              children: [

                _cyberTile(
                  Icons.location_city,
                  'ADDRESS',
                  'Hingurakgoda, Sri Lanka',
                ),

                _cyberTile(
                  Icons.alternate_email,
                  'EMAIL',
                  'sahan14hasmitha@gmail.com',
                ),

                _cyberTile(
                  Icons.school,
                  'QUALIFICATIONS',
                  'NDT in IT - ITUM\n'
                  'Diploma in Data Center & Network Administrator - VTA\n'
                  'CCNA\n'
                  '(Currently Following)',
                ),

                _cyberTile(
                  Icons.computer,
                  'TALENTS',
                  'Network Configuration\n'
                  'Programming\n'
                  'Web Development',
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Soft Skills
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
                  Text(
                    '> SOFT_SKILLS',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    '• Problem Solving\n'
                    '• Analytical Thinking\n'
                    '• Attention to Detail',
                    style: TextStyle(
                      color: Colors.white70,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable Profile Information Tile
  Widget _cyberTile(
    IconData icon,
    String title,
    String value,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF161B22),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: Colors.cyanAccent.withOpacity(0.25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.cyanAccent,
            size: 22,
          ),

          const SizedBox(height: 8),

          Text(
            title,
            style: const TextStyle(
              color: Colors.cyanAccent,
              fontSize: 11,
              fontFamily: 'monospace',
            ),
          ),

          const SizedBox(height: 4),

          Flexible(
            child: SingleChildScrollView(
              child: Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12.5,
                  height: 1.4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}