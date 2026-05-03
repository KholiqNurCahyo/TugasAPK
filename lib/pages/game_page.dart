import 'package:flutter/material.dart';
import 'dart:async';
import '../widgets/app_bar.dart';
import 'hasil_page.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int currentQuestion = 0;
  int selectedIndex = -1;

  int timeLeft = 2700; // 45 menit
  Timer? timer;

  List<int> userAnswers = [];

  List<Map<String, Object>> questions = [
    {
      "question": "Apa kompleksitas waktu rata-rata dari binary search?",
      "answers": ["O(n)", "O(log n)", "O(n log n)", "O(1)"],
      "correct": 1,
    },
    {
      "question": "Bahasa pemrograman Flutter?",
      "answers": ["Java", "Kotlin", "Dart", "Swift"],
      "correct": 2,
    },
    {
      "question": "Fungsi DNS?",
      "answers": [
        "Menyimpan file",
        "Mengubah domain ke IP",
        "Mengamankan jaringan",
        "Mengirim email"
      ],
      "correct": 1,
    },
    {
      "question": "Hasil 2^5?",
      "answers": ["10", "25", "32", "64"],
      "correct": 2,
    },
    {
      "question": "FIFO adalah?",
      "answers": ["Stack", "Queue", "Tree", "Graph"],
      "correct": 1,
    },
    {
      "question": "API adalah?",
      "answers": [
        "Application Programming Interface",
        "Advanced Program Integration",
        "Application Process Interface",
        "Automatic Programming Input"
      ],
      "correct": 0,
    },
    {
      "question": "Inheritance itu?",
      "answers": [
        "Pengulangan kode",
        "Pewarisan sifat",
        "Penghapusan class",
        "Database"
      ],
      "correct": 1,
    },
    {
      "question": "HTTP untuk?",
      "answers": [
        "Transfer data web",
        "UI",
        "Database",
        "Security"
      ],
      "correct": 0,
    },
    {
      "question": "Tipe data desimal Dart?",
      "answers": ["int", "double", "String", "bool"],
      "correct": 1,
    },
    {
      "question": "Sorting tercepat rata-rata?",
      "answers": ["Bubble", "Selection", "Quick Sort", "Insertion"],
      "correct": 2,
    },
  ];

  @override
  void initState() {
    super.initState();

    userAnswers = List.filled(questions.length, -1);

    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        t.cancel();
        finishQuiz();
      }
    });
  }

  String formatTime() {
    int m = timeLeft ~/ 60;
    int s = timeLeft % 60;
    return "$m:${s.toString().padLeft(2, '0')}";
  }

  void checkAnswer(int index) {
    if (selectedIndex != -1) return;

    int correctIndex = questions[currentQuestion]["correct"] as int;

    setState(() {
      selectedIndex = index;
      userAnswers[currentQuestion] = index;
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        currentQuestion++;
        selectedIndex = -1;
      });

      if (currentQuestion >= questions.length) {
        finishQuiz();
      }
    });
  }

  Color getColor(int index) {
    int correctIndex = questions[currentQuestion]["correct"] as int;

    if (selectedIndex == -1) return Colors.white;
    if (index == correctIndex) return Colors.green;
    if (index == selectedIndex) return Colors.red;

    return Colors.white;
  }

  void finishQuiz() {
    timer?.cancel();

    int score = 0;

    for (int i = 0; i < questions.length; i++) {
      int correct = questions[i]["correct"] as int;
      if (userAnswers[i] == correct) {
        score++;
      }
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HasilPage(
          score: score,
          total: questions.length,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var questionData = questions[currentQuestion];
    List<String> answers = questionData["answers"] as List<String>;

    double progress = timeLeft / 2700;

    return Scaffold(
      appBar: buildAppBar(username: "Kholiq"),
      backgroundColor: const Color(0xFF23206F),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // HEADER
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Soal ${currentQuestion + 1}",
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Row(
                  children: [
                    const Icon(Icons.hourglass_bottom, color: Colors.white),
                    const SizedBox(width: 5),
                    Text(
                      formatTime(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 10),

            // 🔥 PROGRESS BAR
            LinearProgressIndicator(
              value: progress,
              minHeight: 8,
              backgroundColor: Colors.white24,
              valueColor: const AlwaysStoppedAnimation(Colors.cyan),
            ),

            const SizedBox(height: 20),

            // SOAL
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    questionData["question"] as String,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // JAWABAN
            Expanded(
              flex: 3,
              child: Column(
                children: List.generate(
                  answers.length,
                      (index) => answerButton(answers[index], index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget answerButton(String text, int index) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
        onPressed: () => checkAnswer(index),
        style: ElevatedButton.styleFrom(
          backgroundColor: getColor(index),
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }
}