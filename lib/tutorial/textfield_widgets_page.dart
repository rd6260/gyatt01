import 'package:flutter/material.dart';

class TextFieldWidgetsPage extends StatefulWidget {
  const TextFieldWidgetsPage({super.key});

  @override
  State<TextFieldWidgetsPage> createState() => _TextFieldWidgetsPageState();
}

class _TextFieldWidgetsPageState extends State<TextFieldWidgetsPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Widgets Demo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              /// Simple TextField
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Simple TextField',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              /// TextField with Controller
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Name (Controller)',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              /// Password TextField
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              /// Multiline TextField
              TextField(
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: 'Multiline TextField',
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                ),
              ),

              const Divider(height: 32),

              /// TextFormField with Validation
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email (TextFormField)',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email cannot be empty';
                  }
                  if (!value.contains('@')) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 24),

              /// Submit Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Form Validated')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
