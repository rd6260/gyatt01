import 'package:flutter/material.dart';

class ButtonsControlsPage extends StatefulWidget {
  const ButtonsControlsPage({super.key});

  @override
  State<ButtonsControlsPage> createState() => _ButtonsControlsPageState();
}

class _ButtonsControlsPageState extends State<ButtonsControlsPage> {
  bool isChecked = false;
  int selectedRadio = 1;
  double sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons & Controls Demo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Buttons',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            /// Text Button
            TextButton(onPressed: () {}, child: const Text('TextButton')),

            const SizedBox(height: 12),

            /// Elevated Button
            ElevatedButton(
              onPressed: () {},
              child: const Text('ElevatedButton'),
            ),

            const SizedBox(height: 12),

            /// Outlined Button
            OutlinedButton(
              onPressed: () {},
              child: const Text('OutlinedButton'),
            ),

            const Divider(height: 32),

            const Text(
              'Icon Button',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            /// Icon Button
            Center(
              child: IconButton(
                icon: const Icon(Icons.thumb_up),
                iconSize: 32,
                onPressed: () {},
                tooltip: 'IconButton',
              ),
            ),

            const Divider(height: 32),

            /// Radio Buttons
            const Text(
              'Radio Buttons',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            RadioListTile(
              title: const Text('Option 1'),
              value: 1,
              groupValue: selectedRadio,
              onChanged: (value) {
                setState(() {
                  selectedRadio = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text('Option 2'),
              value: 2,
              groupValue: selectedRadio,
              onChanged: (value) {
                setState(() {
                  selectedRadio = value!;
                });
              },
            ),

            const Divider(height: 32),

            const Text(
              'Checkbox',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            /// Checkbox
            CheckboxListTile(
              title: const Text('Accept Terms & Conditions'),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),

            const Divider(height: 32),

            /// Slider
            const Text(
              'Slider',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: sliderValue,
              min: 0,
              max: 100,
              divisions: 10,
              label: sliderValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            Center(
              child: Text(
                'Value: ${sliderValue.round()}',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
