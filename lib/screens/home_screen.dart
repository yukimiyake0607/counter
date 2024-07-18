import 'package:counter/widgets/custom_grid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomGrid(),
      ),
    );
  }
}
