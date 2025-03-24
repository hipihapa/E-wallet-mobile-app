import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPageLinks extends StatelessWidget {
  final IconData icon;
  final String label;
  const AccountPageLinks({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                color: Colors.grey,
                icon,
              ),
            ),
            SizedBox(width: 15),
            Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 13,
        ),
      ],
    );
  }
}
