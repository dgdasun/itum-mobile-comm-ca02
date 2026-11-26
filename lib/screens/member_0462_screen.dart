import 'package:flutter/material.dart';

class Member0462Screen extends StatelessWidget {
  const Member0462Screen({super.key});

  
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFFFF5F7),
        appBar: AppBar(
          backgroundColor: const Color(0xFFD81B60),
          foregroundColor: Colors.white,
          title: const Text('Ms. G. L. Chalani'),
          bottom: const TabBar(
            indicatorColor: Colors.amberAccent,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(icon: Icon(Icons.person_pin), text: 'Profile'),
              Tab(icon: Icon(Icons.menu_book), text: 'Education'),
              Tab(icon: Icon(Icons.stars), text: 'Skills'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab 1: Profile
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildMemberPhoto('assets/images/23IT0462.jpg',
                      Icons.face_3, const Color(0xFFD81B60), 65),
                  const SizedBox(height: 16),
                  const Text('Ms. G. L. Chalani',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF880E4F))),
                  const Chip(
                    label: Text('Reg No: 23IT0462'),
                    backgroundColor: Color(0xFFF8BBD0),
                  ),
                  const SizedBox(height: 20),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    child: const Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.location_on,
                              color: Color(0xFFD81B60)),
                          title: Text('Address'),
                          subtitle: Text('Galle, Southern Province, Sri Lanka'),
                        ),
                        Divider(height: 1),
                        ListTile(
                          leading:
                              Icon(Icons.email, color: Color(0xFFD81B60)),
                          title: Text('Email Address'),
                          subtitle: Text('23it0462@itum.mrt.ac.lk'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Tab 2: Education
            ListView(
              padding: const EdgeInsets.all(20),
              children: [
                _eduTile('Institute of Technology, University of Moratuwa',
                    'National Diploma in Technology in IT (2023 - Present)'),
                _eduTile('G.C.E. Advanced Level',
                    'Completed in Physical Science / Technology Stream'),
                _eduTile('G.C.E. Ordinary Level',
                    'Passed with Distinctions including ICT & Mathematics'),
              ],
            ),
            // Tab 3: Skills & Talents
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Soft Skills',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF880E4F))),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: const [
                      Chip(label: Text('Active Listening')),
                      Chip(label: Text('Collaboration')),
                      Chip(label: Text('Adaptability')),
                      Chip(label: Text('Presentation Skills')),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text('Special Talents',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF880E4F))),
                  const SizedBox(height: 10),
                  const Card(
                    child: ListTile(
                      leading: Icon(Icons.palette, color: Color(0xFFD81B60)),
                      title: Text('Creative Arts & Handcrafts'),
                      subtitle: Text('Poster design, Calligraphy, and Singing'),
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

  Widget _eduTile(String title, String subtitle) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Color(0xFFFCE4EC),
          child: Icon(Icons.school, color: Color(0xFFD81B60)),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
      ),
    );
  }
}
