import 'package:flutter/material.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CubitCounter'),
      ),
      body: Center(
        child: const Text('Counter value: xxx'),
      ),
    );
  }
}