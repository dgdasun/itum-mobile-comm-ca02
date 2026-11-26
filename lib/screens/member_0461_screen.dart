import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class Member0461Screen extends StatelessWidget {
  const Member0461Screen({super.key});

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
            color: color.withOpacity(0.15),
            child: Icon(fallbackIcon, size: radius, color: color),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppStateProvider>();
    final isLiked = appState.isLiked('23IT0461');

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4A148C), Color(0xFF7B1FA2), Color(0xFFE1BEE7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon:
                          const Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Text('23IT0461',
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold)),
                    IconButton(
                      icon: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_border,
                        color: Colors.pinkAccent,
                      ),
                      onPressed: () => appState.toggleLike('23IT0461'),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white30,
                  ),
                  child: buildMemberPhoto('assets/images/23IT0461.jpg',
                      Icons.person, Colors.white, 58),
                ),
                const SizedBox(height: 14),
                const Text(
                  'Idusha K. Basnayaka',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Quality Assurance (QA) Intern | IT Undergraduate (23IT0461)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const SizedBox(height: 24),
                _glassCard(
                  title: 'Contact Information',
                  icon: Icons.contact_mail,
                  children: const [
                    _InfoLine(
                        label: 'Phone',
                        value: '077-4305801 / 070-5810844 (WhatsApp)'),
                    _InfoLine(
                        label: 'Email', value: 'idushabasnayaka@gmail.com'),
                    _InfoLine(label: 'GitHub', value: 'Idusha-Ikb'),
                    _InfoLine(
                        label: 'LinkedIn',
                        value: 'www.linkedin.com/in/idusha-basnayaka-54bb1535b'),
                    _InfoLine(
                        label: 'Address',
                        value: 'No.218, "Nandana", Mudagammana, Hatharaliyadda'),
                  ],
                ),
                const SizedBox(height: 16),
                _glassCard(
                  title: 'Summary',
                  icon: Icons.person_outline,
                  children: const [
                    Text(
                      'Motivated IT undergraduate with a strong interest in Software Quality Assurance and Software Testing. Currently studying Software Quality Control as part of my university curriculum, with a foundational understanding of software development and web technologies. Eager to learn software testing methodologies, identify defects and contribute to delivering reliable, high-quality software. A quick learner with good problem-solving, communication, and teamwork skills, seeking an opportunity to develop practical experience in QA engineering.',
                      style: TextStyle(
                          color: Colors.white, fontSize: 14, height: 1.4),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                _glassCard(
                  title: 'Education',
                  icon: Icons.school,
                  children: const [
                    _InfoLine(
                        label: '2026 - Present',
                        value:
                            'Diploma in Information Technology – Institute Of Technology, University Of Moratuwa'),
                    _InfoLine(
                        label: '2020 - 2023',
                        value:
                            "St. Anthony's Girls' College, Kandy (G.C.E A/Ls 2022 – Combined Mathematics: C, Chemistry: C, Physics: S)"),
                    _InfoLine(
                        label: '2014 - 2019',
                        value:
                            "Sujatha Girls' College, Galagedara, Kandy (G.C.E O/Ls 2019 – 8 A, 1 B)"),
                  ],
                ),
                const SizedBox(height: 16),
                _glassCard(
                  title: 'Experience',
                  icon: Icons.work,
                  children: const [
                    _InfoLine(
                        label: 'Dec 2023 - Oct 2024',
                        value:
                            'Intern – Regional Development Bank, Hatharaliyadda'),
                  ],
                ),
                const SizedBox(height: 16),
                _glassCard(
                  title: 'Technical Skills',
                  icon: Icons.code,
                  children: const [
                    _InfoLine(
                        label: 'QA & Testing',
                        value:
                            'Software Testing & Quality Assurance, SDLC, Software Quality Control, Test Cases & Test Scenarios'),
                    _InfoLine(
                        label: 'Programming',
                        value: 'HTML, CSS, JavaScript, Python, Java, React'),
                    _InfoLine(label: 'Database', value: 'MySQL'),
                    _InfoLine(label: 'Version Control', value: 'Git and GitHub'),
                  ],
                ),
                const SizedBox(height: 16),
                _glassCard(
                  title: 'Professional Skills',
                  icon: Icons.auto_awesome,
                  children: const [
                    _InfoLine(
                        label: 'Core Strengths',
                        value:
                            'Problem-solving & analytical thinking, Communication & teamwork, Time management, Quick learning & adaptability'),
                  ],
                ),
                const SizedBox(height: 16),
                _glassCard(
                  title: 'Projects',
                  icon: Icons.build,
                  children: const [
                    _InfoLine(
                        label: 'SecureTrack SL (Final-Year Project)',
                        value:
                            'IoT Container Monitoring System – Mobile Application Developer (Flutter)'),
                    _InfoLine(
                        label: 'Highlights',
                        value:
                            'Cross-platform Flutter/Dart portals for Field Inspectors & Truck Drivers; RFID container unlocking, IoT device registration, driver route monitoring, and Spring Boot REST API integration for real-time telemetry.'),
                    _InfoLine(
                        label: 'Tech Stack',
                        value:
                            'React.js, Java, Spring Boot, Flutter, Dart, REST APIs, IoT Integration'),
                    _InfoLine(
                        label: 'Mini Projects',
                        value:
                            'Personal Portfolio Website (React.js, HTML, CSS, JavaScript) • Simple Calculator (HTML, CSS, JavaScript)'),
                  ],
                ),
                const SizedBox(height: 16),
                _glassCard(
                  title: 'Certifications',
                  icon: Icons.verified,
                  children: const [
                    _InfoLine(
                        label: 'University Of Moratuwa',
                        value:
                            'Python for Beginners Online Course • Web Design for Beginners Online Course'),
                    _InfoLine(
                        label: 'Simplilearn Academy',
                        value: 'Java for Beginners Online Course'),
                    _InfoLine(
                        label: 'Royal ICT Institute',
                        value: 'IT & MS Office 2019 Specialist Course'),
                    _InfoLine(
                        label: 'Open University, Polgolla - Kandy',
                        value: 'Short Course in Listening & Speech'),
                  ],
                ),
                const SizedBox(height: 16),
                _glassCard(
                  title: 'References',
                  icon: Icons.people,
                  children: const [
                    _InfoLine(
                        label: 'Mr. Sunil Rathnayaka',
                        value:
                            "Chemistry Teacher (Retired), Girls' High School - Kandy • Phone: 077-212-7912"),
                    _InfoLine(
                        label: 'Ms. Wathsala Bandara',
                        value:
                            'Lecturer at IT Division, ITUM • Phone: 071-519-1223'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _glassCard(
      {required String title,
      required IconData icon,
      required List<Widget> children}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.18),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: Colors.white.withOpacity(0.35)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white),
              const SizedBox(width: 8),
              Text(title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const Divider(color: Colors.white30, height: 20),
          ...children,
        ],
      ),
    );
  }
}

class _InfoLine extends StatelessWidget {
  final String label;
  final String value;
  const _InfoLine({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: Colors.white, fontSize: 14),
          children: [
            TextSpan(
                text: '$label: ',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }
}
