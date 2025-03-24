import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentListShortCuts extends StatelessWidget {
  final String iconPath;
  final String label;
  final Color color;
  const PaymentListShortCuts({
    super.key,
    required this.iconPath,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 239, 238, 238),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ImageIcon(
              color: color,
              AssetImage(
                iconPath,
              ),
            ),
          ),
        ),
        SizedBox(height: 6),
        Expanded(
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Colors.black,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
