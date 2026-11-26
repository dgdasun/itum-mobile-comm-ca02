import 'package:flutter/material.dart';

class Member0469Screen extends StatefulWidget {
  const Member0469Screen({super.key});

  @override
  State<Member0469Screen> createState() => _Member0469ScreenState();
}

class _Member0469ScreenState extends State<Member0469Screen> {
  bool _showDetails = true;

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
      backgroundColor: const Color(0xFFF0F4F8),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220,
            pinned: true,
            backgroundColor: const Color(0xFF0D47A1),
            foregroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('D. G. Dasun Dilshan',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF0D47A1), Color(0xFF1976D2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildMemberPhoto('assets/images/23IT0469.jpg', Icons.code,
                        Colors.white, 46),
                    const SizedBox(height: 8),
                    const Text('23IT0469 • Software Engineer Intern',
                        style: TextStyle(color: Colors.white70, fontSize: 12)),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    child: const Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.badge, color: Color(0xFF0D47A1)),
                          title: Text('Full Name & Reg No'),
                          subtitle: Text('D. G. Dasun Dilshan (23IT0469)'),
                        ),
                        Divider(height: 1),
                        ListTile(
                          leading:
                              Icon(Icons.location_on, color: Color(0xFF0D47A1)),
                          title: Text('Address'),
                          subtitle: Text('Pathum Stores, Oluara, Walasmulla'),
                        ),
                        Divider(height: 1),
                        ListTile(
                          leading: Icon(Icons.email, color: Color(0xFF0D47A1)),
                          title: Text('Email'),
                          subtitle: Text('dasundilshan376@gmail.com'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Academic Qualifications',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0D47A1))),
                      TextButton.icon(
                        onPressed: () =>
                            setState(() => _showDetails = !_showDetails),
                        icon: Icon(_showDetails
                            ? Icons.expand_less
                            : Icons.expand_more),
                        label: Text(_showDetails ? 'Hide' : 'Show'),
                      ),
                    ],
                  ),
                  if (_showDetails)
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: const Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                '• Diploma in Information Technology – Institute of Technology, University of Moratuwa (Jan 2025 – Present)'),
                            SizedBox(height: 6),
                            Text(
                                '• G.C.E. Advanced Level (2022) & G.C.E. Ordinary Level (2018) – H/Walasmulla National School'),
                            SizedBox(height: 6),
                            Text('• AI/ML Engineer – SLIIT (2026)'),
                            SizedBox(height: 6),
                            Text(
                                '• Cisco NetAcad: JavaScript Essentials 1, Python Essentials 1, Introduction to Modern AI & OS Basics (2026)'),
                            SizedBox(height: 6),
                            Text(
                                '• Google AI Essentials – Google & Coursera (2025)'),
                            SizedBox(height: 6),
                            Text('• Python for Beginners – CODL, UoM (2023)'),
                          ],
                        ),
                      ),
                    ),
                  const SizedBox(height: 16),
                  const Text('Soft Skills',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0D47A1))),
                  const SizedBox(height: 10),
                  _skillBar('Problem-Solving & Analytical Thinking', 0.92),
                  _skillBar('Teamwork & Group Leadership', 0.90),
                  _skillBar('Communication & Collaboration', 0.88),
                  _skillBar('Time Management & Fast Learning', 0.86),
                  const SizedBox(height: 16),
                  const Text('Special Talents',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0D47A1))),
                  const SizedBox(height: 8),
                  const Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      Chip(
                        avatar: Icon(Icons.smart_toy, size: 18),
                        label: Text('VERTEX 2025 Robotics Finalist (ITUM)'),
                      ),
                      Chip(
                        avatar: Icon(Icons.code, size: 18),
                        label: Text('Full-Stack Web Dev (Spring Boot & React)'),
                      ),
                      Chip(
                        avatar: Icon(Icons.psychology, size: 18),
                        label: Text('AI/ML & LLM Integration (Claude API)'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _skillBar(String skill, double level) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(skill, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 4),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: level,
              minHeight: 8,
              backgroundColor: Colors.blue.shade100,
              color: const Color(0xFF0D47A1),
            ),
          ),
        ],
      ),
    );
  }
}
