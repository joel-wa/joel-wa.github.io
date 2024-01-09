import 'package:ccat_sim/classes/simClass.dart';
import 'package:ccat_sim/screens/quizScreen.dart';
import 'package:flutter/material.dart';

class QuizStartPage extends StatefulWidget {
  @override
  _QuizStartPageState createState() => _QuizStartPageState();
}

class _QuizStartPageState extends State<QuizStartPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  SimClass simClass = SimClass();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Begin the CCAT Simulation by Joel'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                SimClass.user.userName = nameController.text;
                SimClass.user.userEmail = emailController.text;
                // Navigate to the quiz page, passing the name and email as parameters
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuizScreen(simClass: simClass)),
                );
              },
              child: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizPage extends StatelessWidget {
  final String name;
  final String email;

  QuizPage({required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    // Implement your quiz logic and UI here
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome, $name!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              'Email: $email',
              style: const TextStyle(fontSize: 20),
            ),
            // Implement the rest of your quiz UI here
          ],
        ),
      ),
    );
  }
}
