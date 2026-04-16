import 'package:flutter/material.dart';
import 'game_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 10,),
      backgroundColor: const Color(0xFF23206F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TEXT
            Text(
              "Quizhard",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 60), // jarak

            // GAMBAR
            Image.asset(
              'assets/quiz_image.png',
              width: 500,
            ),

            SizedBox(height: 60),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GamePage(),
                ),
              );
            },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  backgroundColor: Color(0xFF47D1D1),
                ),
                child: Text('Mainkan le',
              style: TextStyle(
                  fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
            ),
          ],
        ),
      ),
    );
  }
}