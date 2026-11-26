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
            color: color.withValues(alpha: 0.15),
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
                  'Ms. B. M. I. K. Basnayaka',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Text(
                  'Undergraduate – ITUM (23IT0461)',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const SizedBox(height: 24),
                _glassCard(
                  title: 'Contact Information',
                  icon: Icons.contact_mail,
                  children: const [
                    _InfoLine(label: 'Address', value: 'Kurunegala, Sri Lanka'),
                    _InfoLine(label: 'Email', value: '23it0461@itum.mrt.ac.lk'),
                  ],
                ),
                const SizedBox(height: 16),
                _glassCard(
                  title: 'Academic Qualifications',
                  icon: Icons.school,
                  children: const [
                    _InfoLine(
                        label: 'Degree',
                        value: 'National Diploma in Technology (IT) - ITUM'),
                    _InfoLine(
                        label: 'A/L & O/L',
                        value: 'G.C.E. Advanced Level & Ordinary Level'),
                  ],
                ),
                const SizedBox(height: 16),
                _glassCard(
                  title: 'Soft Skills & Special Talents',
                  icon: Icons.auto_awesome,
                  children: const [
                    _InfoLine(
                        label: 'Soft Skills',
                        value:
                            'Teamwork, Communication, Time Management, Leadership'),
                    _InfoLine(
                        label: 'Special Talents',
                        value:
                            'UI/UX Sketching, Classical Dancing, Volunteering'),
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
        color: Colors.white.withValues(alpha: 0.18),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: Colors.white.withValues(alpha: 0.35)),
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
