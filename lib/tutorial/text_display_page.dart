import 'package:flutter/material.dart';

class TextDisplayPage extends StatelessWidget {
  const TextDisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text & Display Widgets'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Simple Text
            const Text('Simple Text Widget', style: TextStyle(fontSize: 18)),

            const SizedBox(height: 12),

            /// Styled Text
            const Text(
              'Styled Text',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                letterSpacing: 1.2,
              ),
            ),

            const Divider(height: 32),

            /// RichText
            RichText(
              text: const TextSpan(
                text: 'Rich ',
                style: TextStyle(fontSize: 18, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Text ',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Widget',
                    style: TextStyle(
                      color: Colors.green,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),

            const Divider(height: 32),

            /// Icon
            const Text(
              'Center Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            const Center(
              child: Icon(Icons.favorite, color: Colors.red, size: 40),
            ),

            const SizedBox(height: 16),

            /// Image from Network
            const Text(
              'Image Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Image.network(
              'https://images.unsplash.com/photo-1769406525591-619fd06c678a?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzMHx8fGVufDB8fHx8fA%3D%3D',
              height: 120,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 16),

            /// Image from Asset (commented example)
            /*
            Image.asset(
              'assets/images/sample.png',
              height: 100,
            ),
            */
            const Divider(height: 32),

            const Text(
              'Placeholder Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            /// Placeholder
            const Placeholder(fallbackHeight: 100, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
