import 'package:flutter/material.dart';

class CategoryCardWidget extends StatelessWidget {
  final String category;
  final VoidCallback onTap;

  CategoryCardWidget({required this.category, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          category,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        onTap: onTap,
      ),
    );
  }
}
