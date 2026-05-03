import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(username: "Kholiq"),
      backgroundColor: const Color(0xFF23206F),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          leaderboardItem("1", "Kholiq", "100"),
          leaderboardItem("2", "Andi", "90"),
          leaderboardItem("3", "Budi", "80"),
        ],
      ),
    );
  }
}

class leaderboardItem extends StatelessWidget {
  final String rank;
  final String name;
  final String score;

  const leaderboardItem(this.rank, this.name, this.score, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text("#$rank"),
        title: Text(name),
        trailing: Text(score),
      ),
    );
  }
}