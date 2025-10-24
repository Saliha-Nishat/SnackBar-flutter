# 🎓 Flutter Student App

A beginner-friendly Flutter project that displays a student’s name on the screen and shows a personalized SnackBar message when the Floating Action Button (FAB) is pressed.  

Built using **Flutter Material 3**, this app demonstrates how to use themes, widgets, and basic UI interactivity in Flutter.

---

## ✨ Features

- 🧑‍🎓 Displays the student's name (`Saliha Nishad Farid`)
- 💬 Shows a SnackBar when the Floating Action Button is pressed
- 🎨 Custom **teal** theme using Material 3
- 🪶 Clean and simple UI (perfect for assessments or learning demos)

---

## 📸 Preview

| Home Screen | SnackBar Example |
|--------------|------------------|
| Displays the student's name in bold at the center | Shows "Hello, Saliha Nishad Farid! This is a SnackBar." |

---

## 🧩 Code Overview

**`lib/main.dart`**
```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String studentName = 'Saliha Nishad Farid';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
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
      ),
      body: Center(
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
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
