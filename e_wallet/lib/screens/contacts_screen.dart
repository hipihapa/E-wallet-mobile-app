import 'package:e_wallet/components/recent_contacts.dart';
import 'package:e_wallet/screens/nav_routes.dart';
import 'package:e_wallet/screens/transfer_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NavigationRoutes(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                  ),
                  Text(
                    "Contact",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(135, 225, 222, 222),
                  filled: true,
                  hintText: "Search contact",
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Recent Contact",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => TransferScreen()),
                  );
                },
                child: RecentContact(
                    avatarImg: 'images/c-1.jpg',
                    label: 'Clarissa Bates',
                    subLabel: 'Bank - 0002 1887 2532'),
              ),
              SizedBox(height: 20),
              RecentContact(
                  avatarImg: 'images/c-2.jpg',
                  label: 'Thomas Diwantara',
                  subLabel: 'Hospital - 0002 1333 2572'),
              SizedBox(height: 20),
              RecentContact(
                  avatarImg: 'images/c-3.jpg',
                  label: 'Mark Johnson',
                  subLabel: 'Photographer - 0002 1487 2522'),
              SizedBox(height: 20),
              RecentContact(
                  avatarImg: 'images/c-4.jpg',
                  label: 'Anisa Bella',
                  subLabel: 'Bank - 0202 1587 2511'),
              SizedBox(height: 30),
              // divider
              Divider(
                height: 1,
                color: Colors.grey[300],
              ),
              SizedBox(height: 30),
              Text(
                "Recent Contact",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              RecentContact(
                  avatarImg: 'images/c-5.jpg',
                  label: 'Angelina Johnson',
                  subLabel: 'Photographer - 0002 1227 2451'),
              SizedBox(height: 20),
              RecentContact(
                  avatarImg: 'images/c-6.jpg',
                  label: 'Johan Crafton',
                  subLabel: 'Model - 0002 1111 5122'),
              SizedBox(height: 20),
              RecentContact(
                  avatarImg: 'images/c-7.jpg',
                  label: 'Ariana Marnisa',
                  subLabel: 'Cosmetics - 0002 1487 2522'),
              SizedBox(height: 20),
              RecentContact(
                  avatarImg: 'images/c-8.jpg',
                  label: 'Victoria Raynolds',
                  subLabel: 'Bank - 0202 4431 2436'),
            ],
          ),
        ),
      ),
    );
  }
}
