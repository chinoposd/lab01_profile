
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'About me',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        scaffoldBackgroundColor: const Color(0xFFFFF7FF),
      ),
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab L1 · 67115618'),
        backgroundColor: const Color(0xFFFFF7FF),
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.person,
              size: 96,
            ),
            SizedBox(height: 8),
            Text(
              'Wasutorn Aungsupanich - 67115618',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
