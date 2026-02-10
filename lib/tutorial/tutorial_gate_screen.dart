import 'package:flutter/material.dart';
import 'package:gyatt_osc/main/home_page.dart';
import 'package:gyatt_osc/tutorial/buttons_controls_page.dart';
import 'package:gyatt_osc/tutorial/container_page.dart';
import 'package:gyatt_osc/tutorial/row_column_page.dart';
import 'package:gyatt_osc/tutorial/scratchpad_screen.dart';
import 'package:gyatt_osc/tutorial/text_display_page.dart';
import 'package:gyatt_osc/tutorial/textfield_widgets_page.dart';

class TutorialGateScreen extends StatelessWidget {
  const TutorialGateScreen({super.key});

  Widget navButton(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
        },
        child: Text(title, style: const TextStyle(fontSize: 16)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets Demo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            navButton(context, 'Container Widget', const ContainerPage()),

            navButton(
              context,
              'Buttons & Controls',
              const ButtonsControlsPage(),
            ),

            navButton(
              context,
              'Text & Display Widgets',
              const TextDisplayPage(),
            ),

            navButton(
              context,
              'TextField Widgets',
              const TextFieldWidgetsPage(),
            ),

            navButton(context, 'Row & Column Widgets', const RowColumnPage()),

            navButton(context, 'Scratchpad', const ScratchpadScreen()),
            navButton(context, 'Demo App', const MovieScreen()),
          ],
        ),
      ),
    );
  }
}
