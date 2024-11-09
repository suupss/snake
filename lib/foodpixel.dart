import 'package:flutter/material.dart';

class Foodpixel extends StatelessWidget {
  const Foodpixel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(2),
              child: Container(decoration: const BoxDecoration(color: Colors.green, borderRadius: BorderRadius.all(Radius.circular(6)),),),);
  }
}