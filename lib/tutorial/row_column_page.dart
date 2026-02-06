import 'package:flutter/material.dart';

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({super.key});

  Widget coloredBox(Color color, String text) {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row & Column Demo'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// ROW DEMO
            const Text(
              'Row Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  coloredBox(Colors.red, '1'),
                  coloredBox(Colors.green, '2'),
                  coloredBox(Colors.blue, '3'),
                ],
              ),
            ),

            const SizedBox(height: 12),
            const Text(
              'mainAxisAlignment: spaceAround\ncrossAxisAlignment: center',
            ),

            const Divider(height: 32),

            /// COLUMN DEMO
            const Text(
              'Column Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Container(
              padding: const EdgeInsets.all(8),
              height: 220,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  coloredBox(Colors.orange, 'A'),
                  coloredBox(Colors.purple, 'B'),
                  coloredBox(Colors.teal, 'C'),
                ],
              ),
            ),

            const SizedBox(height: 12),
            const Text(
              'mainAxisAlignment: spaceEvenly\ncrossAxisAlignment: stretch',
            ),

            const Divider(height: 32),

            /// EXPANDED DEMO
            const Text(
              'Expanded Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Container(
              height: 60,
              color: Colors.grey.shade300,
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container(color: Colors.red)),
                  Expanded(flex: 2, child: Container(color: Colors.green)),
                  Expanded(flex: 1, child: Container(color: Colors.blue)),
                ],
              ),
            ),

            const SizedBox(height: 12),
            const Text('Expanded divides available space using flex'),
          ],
        ),
      ),
    );
  }
}
