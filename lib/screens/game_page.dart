import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF23206F),
      appBar: AppBar(
        title: const Text("Quizhard"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // BAR ATAS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Soal 1",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Row(
                  children: [
                    Icon(Icons.hourglass_bottom, color: Colors.white),
                    SizedBox(width: 5),
                    Text(
                      "30s",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            // 🔥 KOTAK SOAL (DIBESARKAN)
            Expanded(
              flex: 2, // makin besar
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    "Apa kepanjangan dari HTML?",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 🔥 JAWABAN (TURUN KE BAWAH)
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  answerButton("Hyper Text Markup Language"),
                  answerButton("High Tech Modern Language"),
                  answerButton("Hyper Tool Multi Language"),
                  answerButton("Home Tool Markup Language"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // BUTTON JAWABAN
  Widget answerButton(String text) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}