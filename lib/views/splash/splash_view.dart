import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/app/app.gr.dart';
import 'package:uniplexs/app/app_router.dart';
import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/service/navigation.dart';

import '../../constant/color_pallet.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void toOnboardOrAuthScreen() {
    Future.delayed(
      const Duration(seconds: 3),
      () => locator.get<NavigationService>().replaceNamed(AppRoutes.onBoardView),
    );
  }

  @override
  void initState() {
    toOnboardOrAuthScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text(
          'Uniplex',
          style: GoogleFonts.poppins(
            color: primaryColor,
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}
