import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShortCutIcons extends StatelessWidget {
  final String iconPath;
  final String label;
  const ShortCutIcons({
    super.key,
    required this.iconPath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: ImageIcon(
            AssetImage(
              iconPath,
            ),
            color: Colors.deepPurple,
          ),
        ),
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
