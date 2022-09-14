import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Snackbar(),
    );
  }
}

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Snackbar'),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Press Here'),
            onPressed: () {
              final bar = SnackBar(
                content: const Text('This is a SnackBar'),
                duration: const Duration(seconds: 5),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(bar);
            },
          ),
        ));
  }
}
