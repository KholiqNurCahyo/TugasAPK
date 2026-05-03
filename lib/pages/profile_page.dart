import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(username: "Kholiq"),
      backgroundColor: const Color(0xFF23206F),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile.png'),
            ),

            const SizedBox(height: 20),

            const Text(
              "Kholiq",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Player Quizhard",
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}