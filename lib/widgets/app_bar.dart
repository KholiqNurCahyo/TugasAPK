import 'package:flutter/material.dart';

AppBar buildAppBar({
  String username = "Kholiq",
}) {
  return AppBar(
    backgroundColor: const Color(0xFF23206F),
    elevation: 0,
    centerTitle: true,

    title: const Text(
      "Quizhard",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),

    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          children: [
            Text(
              username,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(width: 8),
            const CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
          ],
        ),
      ),
    ],
  );
}