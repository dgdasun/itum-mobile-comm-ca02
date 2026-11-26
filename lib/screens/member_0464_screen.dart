import 'package:flutter/material.dart';

class Member0464Screen extends StatelessWidget {
  const Member0464Screen({super.key});

  Widget buildMemberPhoto(
      String assetPath, IconData fallbackIcon, Color color, double radius) {
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
            color: color.withValues(alpha: 0.15),
            child: Icon(fallbackIcon, size: radius, color: color),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F5E9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B5E20),
        foregroundColor: Colors.white,
        title: const Text('Ms. P. G. D. Darshika'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF2E7D32),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                buildMemberPhoto(
                    'assets/images/23IT0464.jpg', Icons.eco, Colors.white, 52),
                const SizedBox(height: 12),
                const Text('Ms. P. G. D. Darshika',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                const Text('Student ID: 23IT0464',
                    style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _accordionCard(
            title: 'Personal & Contact Details',
            icon: Icons.perm_contact_calendar,
            initiallyExpanded: true,
            content:
                'Address: Deniyaya, Southern Province, Sri Lanka\nEmail: 23it0464@itum.mrt.ac.lk',
          ),
          _accordionCard(
            title: 'Academic Qualifications',
            icon: Icons.school,
            initiallyExpanded: true,
            content:
                '• National Diploma in Technology (IT) – Certificate Course in HRM (Foundation)\n• Diploma in Advanced English Grammar\n• Diploma in English\n• Certificate Course in ICT',
          ),
          _accordionCard(
            title: 'Soft Skills',
            icon: Icons.psychology,
            initiallyExpanded: false,
            content:
                '• Effective Communication\n• Analytical problem-solving\n• Team collaboration\n• Time management',
          ),
          _accordionCard(
            title: 'Special Talents & Hobbies',
            icon: Icons.music_note,
            initiallyExpanded: false,
            content:
                '• Traveling & Exploring New Places\n• Cooking\n• Watching Films',
          ),
        ],
      ),
    );
  }

  Widget _accordionCard({
    required String title,
    required IconData icon,
    required String content,
    required bool initiallyExpanded,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: ExpansionTile(
        initiallyExpanded: initiallyExpanded,
        leading: Icon(icon, color: const Color(0xFF1B5E20)),
        title: Text(title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xFF1B5E20))),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(content, style: const TextStyle(height: 1.5)),
            ),
          ),
        ],
      ),
    );
  }
}
