import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentContact extends StatelessWidget {
  final String avatarImg;
  final String label;
  final String subLabel;
  const RecentContact({
    super.key,
    required this.avatarImg,
    required this.label,
    required this.subLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage(avatarImg),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 10, 18, 60),
              ),
            ),
            SizedBox(height: 6),
            Text(
              subLabel,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
