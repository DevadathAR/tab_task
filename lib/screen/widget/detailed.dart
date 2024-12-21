import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final String details;

  const DetailsScreen({required this.title, required this.details, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          details,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}