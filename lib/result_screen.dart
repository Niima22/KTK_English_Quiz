import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final int total;

  ResultScreen({required this.score, required this.total});

  @override
  Widget build(BuildContext context) {
    // Calculate the percentage score and round to nearest whole number
    int percentage = ((score / total) * 100).round();

    return Scaffold(
      backgroundColor: Color(0xFFE1E9E5),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Big title on top
              Text(
                'Quiz Completed!',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LeagueSpartan',
                  color: Color(0xFF18392F),
                ),
              ),
              SizedBox(height: 24),
              
              // High image
              Image.asset(
                'assets/high.png',  // Ensure the correct image is used
                height: 200,
              ),
              SizedBox(height: 24),

              // Thank you message and score
              Text(
                'Thank you for participating. Your score is:',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'LeagueSpartan',
                  color: Color(0xFF18392F),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                '$percentage%',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LeagueSpartan',
                  color: Color(0xFF94D1BE),
                ),
              ),
              SizedBox(height: 32),

              // Restart button
              ElevatedButton(
                onPressed: () {
                  // Navigate back to the quiz start page or home
                  Navigator.pop(context);
                },
                child: Text(
                  'Restart',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'LeagueSpartan',
                    color: Color(0xFF18392F), // Same color as title
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF94D1BE),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
