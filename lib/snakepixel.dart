import 'package:flutter/material.dart';

class Snakepixel extends StatelessWidget {
  const Snakepixel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(2),
              child: Container(decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(6)))));
  }
}