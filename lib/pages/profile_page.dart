import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(username: "Kholiq"),
      backgroundColor: const Color(0xFF23206F),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // 🔝 HEADER
              Row(
                children: const [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kholiq",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Player Quizhard",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // 🔥 ISI FULL (SCROLL)
              Expanded(
                child: ListView(
                  children: [
                    // GRID 1
                    Row(
                      children: const [
                        Expanded(
                          child: StatCard(
                            title: "Total Pts",
                            value: "1000",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: StatCard(
                            title: "Rank",
                            value: "Top 01",
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    // GRID 2
                    Row(
                      children: const [
                        Expanded(
                          child: StatCard(
                            title: "Quiz Played",
                            value: "01",
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: StatCard(
                            title: "Accuracy",
                            value: "100%",
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // 🔥 INFORMASI
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Informasi",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("Status: Aktif"),
                          Text("Level: Intermediate"),
                          Text("Bergabung: 2025"),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // 🔥 TAMBAHAN BIAR GAK KOSONG
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Statistik Tambahan",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("Jawaban Benar: 50"),
                          Text("Jawaban Salah: 0"),
                          Text("Waktu Rata-rata: 25 detik"),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 🔹 CARD STAT
class StatCard extends StatelessWidget {
  final String title;
  final String value;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}