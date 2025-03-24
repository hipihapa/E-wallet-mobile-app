import 'package:e_wallet/screens/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentKeypad extends StatefulWidget {
  const PaymentKeypad({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PaymentKeypadState createState() => _PaymentKeypadState();
}

class _PaymentKeypadState extends State<PaymentKeypad> {
  String amount = "0";

  void _onKeyTap(String value) {
    setState(() {
      if (value == '⌫') {
        if (amount.length > 1) {
          amount = amount.substring(0, amount.length - 1);
        } else {
          amount = "0";
        }
      } else if (value == '.' && amount.contains('.')) {
        // Do nothing if '.' is already present
      } else {
        if (amount == "0") {
          amount = value;
        } else {
          amount += value;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '\$$amount',
          style: GoogleFonts.poppins(
            fontSize: 50,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 30),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2,
            mainAxisSpacing: 50,
          ),
          itemBuilder: (context, index) {
            dynamic text;
            Widget child;
            if (index < 9) {
              text = '${index + 1}';
              child = Text(
                text,
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              );
            } else if (index == 9) {
              text = '.';
              child = Text(
                text,
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              );
            } else if (index == 10) {
              text = '0';
              child = Text(
                text,
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              );
            } else {
              text = '⌫';
              child = ImageIcon(
                size: 30,
                color: Colors.grey,
                AssetImage(
                  "icons/back-arrow.png",
                ),
              );
            }
            return GestureDetector(
              onTap: () => _onKeyTap(text),
              child: Center(
                child: child,
              ),
            );
          },
        ),
        SizedBox(height: 20),
        // continue button
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
            width: 500,
            height: 60,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 68, 42, 113),
                  const Color.fromARGB(255, 95, 24, 218),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.circular(17),
            ),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SuccessScreen(),
                    ),
                  );
                },
                child: Text(
                  "Continue",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
