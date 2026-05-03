import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(username: "Kholiq"),
      backgroundColor: const Color(0xFF23206F),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // 🔥 TOP 3 PODIUM
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                PodiumItem(
                  rank: 2,
                  name: "Andi",
                  score: "900",
                  height: 120,
                  image: 'assets/profile2.png',
                ),
                PodiumItem(
                  rank: 1,
                  name: "Kholiq",
                  score: "1000",
                  height: 160,
                  image: 'assets/profile.png',
                ),
                PodiumItem(
                  rank: 3,
                  name: "Budi",
                  score: "800",
                  height: 100,
                  image: 'assets/profile3.png',
                ),
              ],
            ),

            const SizedBox(height: 30),

            // 🔥 USER CARD (KAMU)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Kholiq",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text("1000 pts"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // 🔥 LIST RANKING
            const LeaderboardItem("04", "Dewi", "700", 'assets/profile4.png'),
            const LeaderboardItem("05", "Rizky", "650", 'assets/profile4.png'),
            const LeaderboardItem("06", "Putra", "600", 'assets/profile4.png'),
            const LeaderboardItem("07", "Sinta", "550", 'assets/profile4.png'),
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////
// 🔥 PODIUM WIDGET
//////////////////////////////////////////////////////
class PodiumItem extends StatelessWidget {
  final int rank;
  final String name;
  final String score;
  final double height;
  final String image;

  const PodiumItem({
    super.key,
    required this.rank,
    required this.name,
    required this.score,
    required this.height,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(height: 8),

        Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),

        Text(
          "$score pts",
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),

        const SizedBox(height: 10),

        Container(
          width: 60,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          child: Text(
            "$rank",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

//////////////////////////////////////////////////////
// 🔥 LIST ITEM
//////////////////////////////////////////////////////
class LeaderboardItem extends StatelessWidget {
  final String rank;
  final String name;
  final String score;
  final String image;

  const LeaderboardItem(
      this.rank,
      this.name,
      this.score,
      this.image, {
        super.key,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text(
            rank,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 15),
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 18,
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(name)),
          Text("$score pts"),
        ],
      ),
    );
  }
}