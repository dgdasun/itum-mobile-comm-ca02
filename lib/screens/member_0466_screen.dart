import 'package:flutter/material.dart';

class Member0466Screen extends StatelessWidget {
  const Member0466Screen({super.key});

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
            color: color.withValues(alpha: 0.15),
            child: Icon(fallbackIcon, size: radius, color: color),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const Color bgWarm = Color(0xFFFFF9F5);
    const Color primarySunset = Color(0xFFE65100);
    const Color accentOrange = Color(0xFFFF6D00);

    return Scaffold(
      backgroundColor: bgWarm,
      appBar: AppBar(
        backgroundColor: primarySunset,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Mr. U. B. U. A. Deshapriya',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ─── HERO HEADER BENTO CARD ───
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFE65100), Color(0xFFFF8A50)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: primarySunset.withValues(alpha: 0.25),
                    blurRadius: 16,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2.5),
                        ),
                        child: buildMemberPhoto(
                          'assets/images/23IT0466.jpg',
                          Icons.person,
                          Colors.white,
                          42,
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Uvindu Adeesha',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.3,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'ID: 23IT0466  |  ITUM',
                              style: TextStyle(
                                color: Color(0xFFFFE0B2),
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Software Engineer Intern',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Text(
                      'Mobile & Full-Stack developer building cross-platform apps with Flutter & React Native, and web apps with React & Node.js. 2 years logistics operations experience applied to software.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.5,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // ─── CONTACT & LOCATION BENTO ROW ───
            Row(
              children: [
                Expanded(
                  child: _bentoCard(
                    bgColor: const Color(0xFFFFE0B2),
                    iconColor: const Color(0xFFE65100),
                    icon: Icons.location_on,
                    title: 'ADDRESS',
                    child: const Text(
                      'Minuwangoda,\nGampaha, Sri Lanka',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF4E2600),
                        height: 1.35,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _bentoCard(
                    bgColor: const Color(0xFFFFCCBC),
                    iconColor: const Color(0xFFD84315),
                    icon: Icons.alternate_email,
                    title: 'CONTACT',
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'uvinduadeeshadpriya@gmail.com',
                          style: TextStyle(
                            fontSize: 11.5,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF4A1B0C),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '+94 76 908 8044',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF4A1B0C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // ─── QUALIFICATIONS BENTO CARD ───
            _bentoCard(
              bgColor: Colors.white,
              borderColor: const Color(0xFFFFCC80),
              iconColor: accentOrange,
              icon: Icons.school,
              title: 'ACADEMIC & PROFESSIONAL QUALIFICATIONS',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _bulletItem(
                    title: 'National Diploma in Information Technology (NDIT)',
                    subtitle:
                        'Institute of Technology, University of Moratuwa (ITUM)\nSpecialization: Mobile Application Development & Web Development',
                  ),
                  const SizedBox(height: 10),
                  _bulletItem(
                    title: 'Executive – Wharf Clerk (2022 – 2024)',
                    subtitle:
                        'HUB Lanka (Pvt) Ltd – Freight Forwarding Operations, shipment tracking & logistics documentation',
                  ),
                  const SizedBox(height: 10),
                  _bulletItem(
                    title: 'G.C.E. Advanced Level & Ordinary Level',
                    subtitle: 'Secondary Education Qualifications',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // ─── SOFT SKILLS & TALENTS BENTO ROW ───
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Soft Skills
                Expanded(
                  child: _bentoCard(
                    bgColor: const Color(0xFFFFF3E0),
                    borderColor: const Color(0xFFFFE0B2),
                    iconColor: const Color(0xFFE65100),
                    icon: Icons.psychology,
                    title: 'SOFT SKILLS',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _miniBullet('Team Leadership (Group Leader)'),
                        _miniBullet('Problem Solving'),
                        _miniBullet('Time Management'),
                        _miniBullet('Clear Communication'),
                        _miniBullet('Logistics Adaptability'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Talents & Tech Stack
                Expanded(
                  child: _bentoCard(
                    bgColor: const Color(0xFFFBE9E7),
                    borderColor: const Color(0xFFFFCCBC),
                    iconColor: const Color(0xFFD84315),
                    icon: Icons.auto_awesome,
                    title: 'TALENTS',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _miniBullet('Flutter & React Native'),
                        _miniBullet('Full-Stack Web (React/Node)'),
                        _miniBullet('Database Design (MySQL/Firebase)'),
                        _miniBullet('Docker & Cloud Basics'),
                        _miniBullet('AI-Assisted Engineering'),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // ─── FEATURED PROJECTS BENTO CARD ───
            _bentoCard(
              bgColor: Colors.white,
              borderColor: const Color(0xFFFFCC80),
              iconColor: primarySunset,
              icon: Icons.code,
              title: 'FEATURED PROJECTS (FROM CV)',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _projectRow(
                    name: 'Freight Forwarding System (FYP)',
                    tech: 'Web Application (Leader)',
                    desc:
                        'Logistics management system tracking shipments and client documentation.',
                  ),
                  const Divider(height: 16, color: Color(0xFFFFE0B2)),
                  _projectRow(
                    name: 'Coffer – Expense Tracker',
                    tech: 'Flutter & Dart',
                    desc:
                        'Cross-platform budget and income tracking app with category summaries.',
                  ),
                  const Divider(height: 16, color: Color(0xFFFFE0B2)),
                  _projectRow(
                    name: 'Traveller App',
                    tech: 'React Native',
                    desc:
                        'Travel and camping discovery mobile application for outdoor enthusiasts.',
                  ),
                  const Divider(height: 16, color: Color(0xFFFFE0B2)),
                  _projectRow(
                    name: 'Mobile Shop POS System',
                    tech: 'React JS & Node.js',
                    desc:
                        'Full-stack retail point-of-sale system for stock tracking and billing.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable Bento Box Container
  Widget _bentoCard({
    required Color bgColor,
    Color? borderColor,
    required Color iconColor,
    required IconData icon,
    required String title,
    required Widget child,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: borderColor ?? Colors.transparent,
          width: 1.2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: iconColor, size: 20),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: iconColor,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          child,
        ],
      ),
    );
  }

  static Widget _bulletItem({required String title, required String subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('• ',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE65100))),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E2E2E),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, top: 2),
          child: Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF555555),
              height: 1.35,
            ),
          ),
        ),
      ],
    );
  }

  static Widget _miniBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE65100))),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 11.5,
                fontWeight: FontWeight.w500,
                color: Color(0xFF333333),
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _projectRow({
    required String name,
    required String tech,
    required String desc,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E2E2E),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                color: const Color(0xFFFFE0B2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                tech,
                style: const TextStyle(
                  fontSize: 10.5,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFE65100),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 3),
        Text(
          desc,
          style: const TextStyle(
            fontSize: 11.5,
            color: Color(0xFF666666),
            height: 1.3,
          ),
        ),
      ],
    );
  }
}
