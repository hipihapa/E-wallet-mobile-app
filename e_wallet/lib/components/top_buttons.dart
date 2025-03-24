import 'package:flutter/material.dart';

class TopMostButtons extends StatelessWidget {
  final IconData icon;
  const TopMostButtons({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(
            color: const Color.fromARGB(255, 131, 131, 131),
          ),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
