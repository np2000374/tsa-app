// screens/background.dart
import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({super.key});

  Widget infoBox(String title, String content) {
    return Container(
      width: 160,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 32, 2, 0)),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(color: Color.fromARGB(255, 2, 28, 49), fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'A QUICK BACKGROUND',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                infoBox("Lorem ipsum dolor sit amet", "consectetur adipiscing elit"),
                infoBox("Lorem ipsum dolor sit amet", "consectetur adipiscing elit"),
                infoBox("Lorem ipsum dolor sit amet", "consectetur adipiscing elit"),
                infoBox("Lorem ipsum dolor sit amet", "consectetur adipiscing elit"),
              ],
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/showcase'),
              child: const Text('Next'),
            ),
          ],
          ),
        ),
    );
  }
}