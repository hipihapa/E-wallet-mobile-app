import 'package:e_wallet/components/accountpage_links.dart';
import 'package:e_wallet/components/top_buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 44, 12, 101),
            const Color.fromARGB(255, 77, 19, 178),
            // these white colors are to trick the float action buton's background
            Colors.white,
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // body
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TopMostButtons(
                    icon: Icons.arrow_back_ios_new,
                  ),
                  Container(
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
                    child: Center(
                      child: Icon(
                        Icons.add_alert_rounded,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 90),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    // contents

                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 30.0, right: 30, top: 80),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image:
                                          AssetImage('images/profile-img.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 6),
                                    Text(
                                      'William John Malik',
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Aggressive Investor',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              height: 1,
                              color: Colors.grey[300],
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Column(
                                children: [
                                  AccountPageLinks(
                                      icon: Icons.person,
                                      label: 'Personal Data'),
                                  SizedBox(height: 15),
                                  AccountPageLinks(
                                      icon: Icons.settings, label: 'Settings'),
                                  SizedBox(height: 15),
                                  AccountPageLinks(
                                      icon: Icons.receipt_rounded,
                                      label: 'E-Statement'),
                                  SizedBox(height: 15),
                                  AccountPageLinks(
                                      icon: Icons.favorite_sharp,
                                      label: 'Refferal Code'),
                                  SizedBox(height: 20),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey[300],
                                  ),
                                  SizedBox(height: 20),
                                  AccountPageLinks(
                                      icon: Icons.report_rounded,
                                      label: "FAQ's"),
                                  SizedBox(height: 15),
                                  AccountPageLinks(
                                      icon: Icons.edit_document,
                                      label: 'Our Handbook'),
                                  SizedBox(height: 15),
                                  AccountPageLinks(
                                      icon: Icons.add_home_work_sharp,
                                      label: 'Community'),
                                  SizedBox(height: 20),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Container(
                                width: 500,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.headset_mic_outlined,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      'Feel Free to Ask. We are Ready to Help',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // hanging card
                  Positioned(
                    top: -45,
                    left: (MediaQuery.of(context).size.width - 350) / 2,
                    child: Container(
                      width: 350,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            // ignore: deprecated_member_use
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30.0, top: 6.0, bottom: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Premium',
                                  style: GoogleFonts.poppins(
                                    fontSize: 30,
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ImageIcon(
                                          size: 10,
                                          AssetImage(
                                            'icons/gift.png',
                                          ),
                                        ),
                                        Text(
                                          'Special Offer',
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              '1 month on us, then \$450.54/month',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
