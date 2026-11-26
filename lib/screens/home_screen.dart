import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import 'login_screen.dart';
import 'member_0461_screen.dart';
import 'member_0462_screen.dart';
import 'member_0463_screen.dart';
import 'member_0464_screen.dart';
import 'member_0465_screen.dart';
import 'member_0466_screen.dart';
import 'member_0467_screen.dart';
import 'member_0468_screen.dart';
import 'member_0469_screen.dart';

class MemberItem {
  final String regNo;
  final String name;
  final String roleTag;
  final Color accentColor;
  final Widget screen;

  const MemberItem({
    required this.regNo,
    required this.name,
    required this.roleTag,
    required this.accentColor,
    required this.screen,
  });
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final List<MemberItem> members = [
    const MemberItem(
      regNo: '23IT0461',
      name: 'Ms. B. M. I. K. Basnayaka',
      roleTag: 'Glassmorphism UI',
      accentColor: Colors.deepPurple,
      screen: Member0461Screen(),
    ),
    const MemberItem(
      regNo: '23IT0462',
      name: 'Ms. G. L. Chalani',
      roleTag: 'Interactive TabBar UI',
      accentColor: Colors.pinkAccent,
      screen: Member0462Screen(),
    ),
    const MemberItem(
      regNo: '23IT0463',
      name: 'Mr. G. D. S. H. Chandrawansha',
      roleTag: 'Dark Cyber-Tech UI',
      accentColor: Colors.cyan,
      screen: Member0463Screen(),
    ),
    const MemberItem(
      regNo: '23IT0464',
      name: 'Ms. P. G. D. Darshika',
      roleTag: 'Emerald Accordion UI',
      accentColor: Colors.teal,
      screen: Member0464Screen(),
    ),
    const MemberItem(
      regNo: '23IT0465',
      name: 'Mr. B. C. M. D. De Silva',
      roleTag: 'Executive Timeline UI',
      accentColor: Colors.indigo,
      screen: Member0465Screen(),
    ),
    const MemberItem(
      regNo: '23IT0466',
      name: 'Mr. U. B. U. A. Deshapriya',
      roleTag: 'Warm Bento Grid UI',
      accentColor: Colors.deepOrange,
      screen: Member0466Screen(),
    ),
    const MemberItem(
      regNo: '23IT0467',
      name: 'Ms. K. H. M. Dewanga',
      roleTag: 'Editorial Magazine UI',
      accentColor: Colors.brown,
      screen: Member0467Screen(),
    ),
    const MemberItem(
      regNo: '23IT0468',
      name: 'Mr. K. M. G. D. G. Dias',
      roleTag: 'Minimalist Card UI',
      accentColor: Colors.blueGrey,
      screen: Member0468Screen(),
    ),
    const MemberItem(
      regNo: '23IT0469',
      name: 'Mr. D. G. D. Dilshan',
      roleTag: 'Developer Sliver UI',
      accentColor: Colors.blueAccent,
      screen: Member0469Screen(),
    ),
  ];

  Future<void> _logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    if (context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppStateProvider>();
    final isDark = appState.isDarkHome;

    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF121212) : const Color(0xFFF4F6FA),
      appBar: AppBar(
        title: const Text('Team Members (9)'),
        backgroundColor: isDark ? const Color(0xFF1F1F1F) : Colors.indigo,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            tooltip: 'Toggle Dark/Light Mode',
            icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
            onPressed: appState.toggleHomeTheme,
          ),
          IconButton(
            tooltip: 'Logout',
            icon: const Icon(Icons.logout),
            onPressed: () => _logout(context),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: members.length,
        itemBuilder: (context, index) {
          final member = members[index];
          final liked = appState.isLiked(member.regNo);

          return Card(
            color: isDark ? const Color(0xFF1E1E1E) : Colors.white,
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(
                radius: 26,
                backgroundColor: member.accentColor.withOpacity(0.15),
                child: Text(
                  member.regNo.substring(6),
                  style: TextStyle(
                    color: member.accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                member.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isDark ? Colors.white : Colors.black87,
                ),
              ),
              subtitle: Text(
                '${member.regNo}  •  ${member.roleTag}',
                style: TextStyle(
                  color: isDark ? Colors.grey[400] : Colors.grey[700],
                  fontSize: 12.5,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      liked ? Icons.favorite : Icons.favorite_border,
                      color: liked ? Colors.red : Colors.grey,
                    ),
                    onPressed: () => appState.toggleLike(member.regNo),
                  ),
                  Icon(Icons.arrow_forward_ios,
                      size: 16, color: member.accentColor),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => member.screen),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
