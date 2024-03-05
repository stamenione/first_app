import 'package:first_app/section_3/data/questions.dart';
import 'package:first_app/section_3/questions_screen.dart';
import 'package:first_app/section_3/quiz_start_screen.dart';
import 'package:first_app/section_3/result_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // one way of rendering content conditionally
  // Widget activeScreen = const QuizStartScreen();

  // Second way of rendering content conditionally
  // it will allow us to get rid of initState
  // var activeScreen = 'start-screen'; // some kind of id
  // in switchScreen we replace it with another id
  // advantage: is that we can of course initialize active
  // screen to a string and now we can infer the actual widgets
  // that should be rendered based on that string values
  // and now in the place where it should render different screens
  // use ternary expression
  // activeScreen == 'start-screen'? QuizStartScreen(switchScreen) : const QuestionsScreen(),

  // workaround section 3 video 60
  Widget? activeScreen;

  List<String> selectedAnswers = [];

  @override
  void initState() {
    activeScreen = QuizStartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(chooseAnswers);
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      switchScreen();
    });
  }

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(selectedAnswers, restartQuiz);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Alternative for ternary expression
    // * final screenWidget = 'start-screen'? QuizStartScreen(switchScreen) : const QuestionsScreen(),
    // screenWidget = QuizStartScreen(switchScreen)
    // if (activeScreen == 'questions-screen') {
    //  screenWidget = const QuestionsScreen();
    // }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepOrange,
                Colors.orange,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}
