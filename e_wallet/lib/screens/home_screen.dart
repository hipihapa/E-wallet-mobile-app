import 'package:e_wallet/components/paymentlist_icons.dart';
import 'package:e_wallet/components/shortcut_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('images/profile-img.jpg'),
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
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'icons/notify.png',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Available Balance',
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Color.fromARGB(255, 193, 190, 190),
              ),
            ),
            SizedBox(height: 4),
            Text(
              '\$450.54',
              style: GoogleFonts.poppins(
                fontSize: 48,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 100),
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, right: 30, top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 60),
                              Text(
                                'Payment List',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 20),
                              GridView.count(
                                crossAxisCount: 4,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                shrinkWrap: true,
                                children: [
                                  PaymentListShortCuts(
                                    iconPath: 'icons/wi-fi.png',
                                    label: 'Internet',
                                    color: Colors.red,
                                  ),
                                  PaymentListShortCuts(
                                    iconPath: 'icons/thunder.png',
                                    label: 'Electricity',
                                    color: Colors.orange,
                                  ),
                                  PaymentListShortCuts(
                                    iconPath: 'icons/ticket.png',
                                    label: 'Voucher',
                                    color: Colors.green,
                                  ),
                                  PaymentListShortCuts(
                                    iconPath: 'icons/aid-kit.png',
                                    label: 'Assurance',
                                    color: Colors.lightBlueAccent,
                                  ),
                                  PaymentListShortCuts(
                                    iconPath: 'icons/mobile.png',
                                    label: 'Mobile Credit',
                                    color: Colors.deepPurple,
                                  ),
                                  PaymentListShortCuts(
                                    iconPath: 'icons/receipt.png',
                                    label: 'Bill',
                                    color:
                                        const Color.fromARGB(255, 33, 47, 243),
                                  ),
                                  PaymentListShortCuts(
                                    iconPath: 'icons/cart.png',
                                    label: 'Merchant',
                                    color:
                                        const Color.fromARGB(255, 238, 49, 169),
                                  ),
                                  PaymentListShortCuts(
                                    iconPath: 'icons/menu.png',
                                    label: 'More',
                                    color: Colors.deepPurple,
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Promo & Discount',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'See more',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'images/promo-card-1.jpg',
                                        width: 300,
                                        height: 200,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'images/promo-card-2.jpg',
                                        width: 300,
                                        height: 200,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
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
                            left: 40.0, right: 40.0, top: 15.0, bottom: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ShortCutIcons(
                              iconPath: 'icons/wallet.png',
                              label: 'Top Up',
                            ),
                            ShortCutIcons(
                              iconPath: 'icons/send-money.png',
                              label: 'Send',
                            ),
                            ShortCutIcons(
                              iconPath: 'icons/receive-money.png',
                              label: 'Request',
                            ),
                            ShortCutIcons(
                              iconPath: 'icons/history.png',
                              label: 'History',
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
