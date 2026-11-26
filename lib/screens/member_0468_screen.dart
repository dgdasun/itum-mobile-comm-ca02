
import 'package:flutter/material.dart';

class DiasProfile extends StatefulWidget {
  const DiasProfile({super.key});

  @override
  State<DiasProfile> createState() => _DiasProfileState();
}

class _DiasProfileState extends State<DiasProfile> {
  bool isFavourite = false;

  final Color background = const Color(0xFF100E25);
  final Color cardColor = const Color(0xFF211D39);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,

      // App Bar
      appBar: AppBar(
        title: const Text("My Profile"),
        backgroundColor: background,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              isFavourite
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: isFavourite
                  ? Colors.pinkAccent
                  : Colors.white,
            ),
            onPressed: () {
              setState(() {
                isFavourite = !isFavourite;
              });
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            // Profile Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF4169E1),
                    Color(0xFF8E44AD),
                    Color(0xFFEC4899),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(28),
              ),
              child: Column(
                children: [

                  // Profile Photograph
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/dias.jpg',
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 120,
                            height: 120,
                            color: Colors.deepPurple,
                            child: const Icon(
                              Icons.person,
                              size: 75,
                              color: Colors.white,
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    "K.M.G.D.G.Dias",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    "23IT0468",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      "IT Student | IoT Enthusiast",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // About Me
            sectionCard(
              "About Me",
              Icons.person_outline,
              Colors.purpleAccent,
              const Text(
                "I am an IT student passionate about software "
                "development and the Internet of Things. "
                "I enjoy learning new technologies, working "
                "with team members and developing innovative "
                "technology solutions.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                  height: 1.6,
                ),
              ),
            ),

            // Contact Information
            sectionCard(
              "Contact Information",
              Icons.contact_mail,
              Colors.lightBlueAccent,
              Column(
                children: [
                  infoRow(
                    Icons.location_on,
                    "Address",
                    "Baddegama, Galle",
                  ),
                  infoRow(
                    Icons.email,
                    "Email",
                    "23IT048@itum.mrt.ac.lk",
                  ),
                ],
              ),
            ),

            // Academic Qualifications
            sectionCard(
              "Academic Qualifications",
              Icons.school,
              Colors.orangeAccent,
              Column(
                children: [
                  infoRow(
                    Icons.menu_book,
                    "G.C.E. Ordinary Level",
                    "2018",
                  ),
                  infoRow(
                    Icons.school_outlined,
                    "G.C.E. Advanced Level",
                    "2021",
                  ),
                ],
              ),
            ),

            // Technical Skills
            sectionCard(
              "Technical Skills",
              Icons.memory,
              Colors.cyanAccent,
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  skillChip(
                    "Internet of Things",
                    Icons.sensors,
                    Colors.tealAccent,
                  ),
                  skillChip(
                    "Google Colab",
                    Icons.code,
                    Colors.orangeAccent,
                  ),
                ],
              ),
            ),

            // Soft Skills
            sectionCard(
              "Soft Skills",
              Icons.groups,
              Colors.pinkAccent,
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  skillChip(
                    "Teamwork",
                    Icons.groups,
                    Colors.purpleAccent,
                  ),
                  skillChip(
                    "Team Leadership",
                    Icons.emoji_events,
                    Colors.lightBlueAccent,
                  ),
                  skillChip(
                    "Communication",
                    Icons.chat,
                    Colors.pinkAccent,
                  ),
                ],
              ),
            ),

            // Hobbies and Special Talents
            sectionCard(
              "Special Talents & Hobbies",
              Icons.interests,
              Colors.greenAccent,
              const Text(
                "Add your hobbies and special talents here.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),
            ),

            // Career Goal
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF4F46E5),
                    Color(0xFF9333EA),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.rocket_launch,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Career Goal",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "To become a Software Engineer specializing "
                    "in IoT and intelligent connected systems.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              "Mobile Communication | CA 02",
              style: TextStyle(color: Colors.white38),
            ),

            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  // Reusable Section Card
  Widget sectionCard(
    String title,
    IconData icon,
    Color accent,
    Widget content,
  ) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: accent.withOpacity(0.2),
        ),
        boxShadow: [
          BoxShadow(
            color: accent.withOpacity(0.07),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: accent),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          content,
        ],
      ),
    );
  }

  // Reusable Information Row
  Widget infoRow(
    IconData icon,
    String title,
    String value,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.deepPurple.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: Colors.purpleAccent,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    color: Colors.white60,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Reusable Skill Chip
  Widget skillChip(
    String name,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.12),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: color.withOpacity(0.4),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 17),
          const SizedBox(width: 7),
          Text(
            name,
            style: TextStyle(
              color: color,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
