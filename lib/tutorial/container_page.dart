import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Widget Demo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Simple Container (color + size)
            Container(
              height: 80,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                'Simple Container',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),

            const SizedBox(height: 16),

            /// Container with padding & margin
            Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(16),
              color: Colors.green,
              child: const Text(
                'Container with Padding & Margin',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),

            const SizedBox(height: 16),

            /// Container with decoration
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.black, width: 2),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: const Text(
                'Decorated Container',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 16),

            /// Container with alignment
            Container(
              height: 100,
              color: Colors.purple,
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(12),
              child: const Text(
                'Aligned Bottom Right',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),

            const SizedBox(height: 16),

            /// Container with constraints
            Container(
              constraints: const BoxConstraints(minHeight: 60, maxHeight: 120),
              color: Colors.redAccent,
              alignment: Alignment.center,
              child: const Text(
                'Container with Constraints',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),

            const SizedBox(height: 16),

            /// Container with transform
            Transform.rotate(
              angle: 0.05,
              child: Container(
                height: 80,
                color: Colors.teal,
                alignment: Alignment.center,
                child: const Text(
                  'Transformed Container',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
