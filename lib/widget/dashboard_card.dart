import 'package:flutter/material.dart';

Widget buildCard(String title, IconData icon) {
  return Container(
    height: 50,
    child: Card(
      
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32.0),
            Text(title),
          ],
        ),
      ),
    ),
  );
}