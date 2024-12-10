import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Examples'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton Example
            ElevatedButton(
              onPressed: () {
                print('Elevated Button Pressed');
              },
              child: const Text('Elevated Button'),
              style: ElevatedButton.styleFrom(
                // primary: Colors.orange,
                // onPrimary: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                textStyle: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),

            // TextButton Example
            TextButton(
              onPressed: () {
                print('Text Button Pressed');
              },
              child: const Text('Text Button'),
            ),
            const SizedBox(height: 20),

            // OutlinedButton Example
            OutlinedButton(
              onPressed: () {
                print('Outlined Button Pressed');
              },
              child: const Text('Outlined Button'),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.orange),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
            ),
            const SizedBox(height: 20),

            // IconButton Example
            IconButton(
              icon: const Icon(Icons.add, size: 30),
              onPressed: () {
                print('Icon Button Pressed');
              },
            ),
            const SizedBox(height: 20),

            // Custom Button Example
            GestureDetector(
              onTap: () {
                print('Custom Button Pressed');
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Custom Button',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
