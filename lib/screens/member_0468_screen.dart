import 'package:flutter/material.dart';

class Member0468Screen extends StatelessWidget {
  const Member0468Screen({super.key});

  
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
      backgroundColor: const Color(0xFFECEFF1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 190,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFF263238),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    ),
                  ),
                  child: SafeArea(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -50,
                  child: CircleAvatar(
                    radius: 56,
                    backgroundColor: Colors.white,
                    child: buildMemberPhoto('assets/images/23IT0468.jpg',
                        Icons.person, const Color(0xFF263238), 52),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            const Text('Mr. K. M. G. D. G. Dias',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text('23IT0468  •  Kalutara, Sri Lanka',
                style: TextStyle(color: Colors.blueGrey)),
            const Text('23it0468@itum.mrt.ac.lk',
                style: TextStyle(color: Colors.indigo)),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                child: const Padding(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Academic Qualifications',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: 6),
                      Text(
                          '• NDT in Information Technology (ITUM)\n• G.C.E. A/L & G.C.E. O/L'),
                      Divider(height: 24),
                      Text('Soft Skills',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: 6),
                      Text(
                          '• Analytical Thinking, Team Spirit, Punctuality, Leadership'),
                      Divider(height: 24),
                      Text('Special Talents',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: 6),
                      Text('• Volleyball, Graphic Design, Hardware Assembly'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
