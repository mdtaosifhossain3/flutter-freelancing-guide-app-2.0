import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freelancing_app/constants/my_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lottie/lottie.dart';

class StartTheTest extends StatefulWidget {
  List<Map<String,dynamic>> ddd;
  StartTheTest({Key? key, required this.ddd}) : super(key: key);


  @override
  State<StartTheTest> createState() => _StartTheTestScreenState();
}

class _StartTheTestScreenState extends State<StartTheTest>
    with SingleTickerProviderStateMixin {
  int currentQuestionIndex = 0;
  int score = 0;
  int remainingTime = 30; // 30 seconds per question
  Timer? timer;
  bool isQuizActive = false;
  bool showResult = false;

  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  void startQuiz() {
    setState(() {
      isQuizActive = true;
      currentQuestionIndex = 0;
      score = 0;
      showResult = false;
      startTimer();
    });
  }

  void startTimer() {
    remainingTime = 30;
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      if (remainingTime > 0) {
        setState(() {
          remainingTime--;
        });
      } else {
        checkAnswer(false); // Move to the next question when time is up
      }
    });
  }

  void checkAnswer(bool isCorrect) {
    if (isCorrect) score++;
    _controller.reset();
    _controller.forward();
    if (currentQuestionIndex < widget.ddd.length - 1) {
      setState(() {
        currentQuestionIndex++;
        startTimer();
      });
    } else {
      setState(() {
        timer?.cancel();
        saveScore();
        isQuizActive = false;
        showResult = true;
      });
    }
  }

  Future<void> saveScore() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('lastScore', score);
  }

  Future<int?> getLastScore() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('lastScore');
  }

  @override
  void dispose() {
    timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A1A22),
      appBar: AppBar(
        title: const Text('Skill Assessment'),
        backgroundColor: MyColors.secondaryBgColor,
      ),
      body: isQuizActive
          ? buildQuizSection()
          : (showResult ? buildResultSection() : buildCategorySelection()),
    );
  }

  Widget buildCategorySelection() {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/animations/quiz.json', // Add your Lottie animation
            height: 200,
          ),
          ElevatedButton(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor:MyColors.btnColor,
              foregroundColor: MyColors.rawWhiteColor,
            ),
            child: const Text('Start Test'),
          ),
        ],
      ),
    );
  }

  Widget buildQuizSection() {
    final currentQuestion = widget.ddd[currentQuestionIndex];
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Question ${currentQuestionIndex + 1}/${widget.ddd.length}",
            style:  TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: MyColors.whiteColor),
          ),
          const SizedBox(height: 20),
          Text(
            currentQuestion['question'],
            style: const TextStyle(fontSize: 16,color:  Colors.grey),
          ),
          const SizedBox(height: 20),
          AnimatedOpacity(
            opacity: 1.0,
            duration: const Duration(milliseconds: 500),
            child: Column(

              children: currentQuestion['options'].map<Widget>((option) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ElevatedButton(
                    onPressed: () => checkAnswer(option['isCorrect']),
                    style: ElevatedButton.styleFrom(

                      backgroundColor: const Color(0xFFA3BED0),
                      foregroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(50),
                    ),
                    child: Text(option['text']),
                  ),
                );
              }).toList(),
            ),
          ),
          const Spacer(),
          Center(
            child: Text(
              "Time remaining: $remainingTime seconds",
              style:  TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: MyColors.whiteColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildResultSection() {
    return FutureBuilder<int?>(
      future: getLastScore(),
      builder: (context, snapshot) {
        final lastScore = snapshot.data ?? 0;
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/animations/success.json',
                height: 200,

              ),
              Text(
                "Your Score: $score/${widget.ddd.length}",
                style:  TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: MyColors.whiteColor),
              ),
              const SizedBox(height: 10),
              Text(
                "Last Score: $lastScore",
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: startQuiz,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFA3BED0),
                  foregroundColor: Colors.white,
                ),
                child: const Text("Retry"),
              ),
            ],
          ),
        );
      },
    );
  }
}
