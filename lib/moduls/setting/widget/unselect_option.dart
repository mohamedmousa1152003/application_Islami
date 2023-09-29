import 'package:flutter/material.dart';

class unselect extends StatelessWidget {
  final String unselectedTitel;

  const unselect({super.key, required this.unselectedTitel});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        margin: const EdgeInsets.all(8),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.white.withOpacity(0.04),
              width: 2,
            )),
        child: Text(unselectedTitel));
  }
}
