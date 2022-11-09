import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/asset_path.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  static final menuItems = ['Edit Profile', 'Logout'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
            color: whiteColor,
            fontWeight: FontWeight.w600,
            fontSize: 20.0,
          ),
        ),
        actionsIconTheme: IconThemeData(
          color: whiteColor,
        ),
        actions: [
          PopupMenuButton<String>(
            tooltip: 'Options',
            color: whiteColor,
            onSelected: (value) {},
            itemBuilder: (context) => menuItems
                .map(
                  (e) => PopupMenuItem<String>(
                    onTap: () => log(e),
                    value: e,
                    child: Text(e),
                  ),
                )
                .toList(),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: primaryColor,
                maxRadius: 50,
                child: CircleAvatar(
                  backgroundColor: backgroundColor,
                  backgroundImage: const AssetImage(AssetPath.micky1),
                  maxRadius: 48,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                'Douglas Appiah',
                style: GoogleFonts.poppins(
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
              Text(
                'appiah@example.com',
                style: GoogleFonts.poppins(
                  letterSpacing: 1.2,
                  color: whiteColor,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
