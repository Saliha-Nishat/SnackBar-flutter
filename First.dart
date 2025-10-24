// main.dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Replace the displayed text with the user's name (from memory).
  final String studentName = 'Saliha Nishad Farid';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student App',
      // Changed app theme color:
      theme: ThemeData(
        primarySwatch: Colors.teal, // <-- new theme color
        useMaterial3: true,
      ),
      home: HomePage(name: studentName),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  final String name;
  const HomePage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Assessment'),
        // AppBar color follows theme; override if you like:
        // backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(
          name, // 1) displayed text changed to your name
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // 2) FloatingActionButton that shows a SnackBar:
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // show a SnackBar when FAB is pressed
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Hello, $name! This is a SnackBar.'),
              duration: Duration(seconds: 2),
            ),
          );
        },
        tooltip: 'Show SnackBar',
        child: const Icon(Icons.message),
      ),
    );
  }
}