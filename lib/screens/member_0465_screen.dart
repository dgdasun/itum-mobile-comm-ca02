import 'package:flutter/material.dart';

class Member0465Screen extends StatelessWidget {
  const Member0465Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mr. B. C. M. D. De Silva')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '23IT0465',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('Executive Timeline UI'),
              SizedBox(height: 16),
              Text('This member profile is not available yet.'),
            ],
          ),
        ),
      ),
    );
  }
}
