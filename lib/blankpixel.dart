import 'package:flutter/material.dart';

class Blankpixel extends StatelessWidget {
  const Blankpixel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(2),
              child: Container(decoration: const BoxDecoration(color: Color.fromARGB(255, 44, 43, 43), borderRadius: BorderRadius.all(Radius.circular(6)),),),);
  }
} 