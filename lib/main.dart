
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _likes = 0;

  void _like() {
    setState(() {
      _likes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab L1 · 67115618'),
        backgroundColor: const Color(0xFFFFF7FF),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.person,
              size: 96,
            ),
            const SizedBox(height: 8),
            const Text(
              'Wasutorn Aungsupanich - 67115618',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text('Likes: $_likes'),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: _like,
              child: const Text('Like'),
            ),
          ],
        ),
      ),
    );
  }
}
