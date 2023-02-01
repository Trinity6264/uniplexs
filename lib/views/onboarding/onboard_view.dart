import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/app/app_router.dart';
import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/service/navigation.dart';
import 'package:uniplexs/views/onboarding/widget/onboard_widget.dart';

import '../../constant/color_pallet.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({super.key});

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  int pageIndex = 0;

  // Catch the index of the current page

  void onPageChanged(int value) {
    setState(() {
      pageIndex = value;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final pageData = const [
    {
      'svg': busSvg,
      'title': 'Easy Ticket Booking',
      'description':
          'Booking movie tickets has never been this simple. Click on your choices and start booking'
    },
    {
      'svg': otpSvg,
      'title': 'Seat Reservation',
      'description':
          'Select Accessible Seats!, Quickly book your seats alongside your tickets in Our Seating Plan',
    },
    {
      'svg': paymentSvg,
      'title': 'Online Payment',
      'description':
          'Frustrated about long queue?\n You don\'t need to pay at the cinema hall, Pick the choice you want and make payments fast and quick ',
    },
  ];
  // to login screen
  void toLoginScreen() {
    locator.get<NavigationService>().replaceNamed(AppRoutes.loginView);
  }

// Prev func
  void prevPage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    backgroundGradient(),
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: pageData.length,
                        physics: const BouncingScrollPhysics(),
                        onPageChanged: onPageChanged,
                        itemBuilder: (context, index) {
                          final list = pageData[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                width: double.infinity,
                                height: size.height * 0.35,
                                child: Center(
                                  child: SvgPicture.asset(
                                    list['svg']!,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              SizedBox(height: size.height * .15),
                              Text(
                                list['title']!,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: whiteColor,
                                  fontSize: 22.0,
                                  letterSpacing: 1.1,
                                ),
                              ),
                              SizedBox(height: size.height * .05),
                              SizedBox(
                                width: size.width * 0.7,
                                child: Text(
                                  list['description']!,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                              SizedBox(height: size.height * .05),
                              if (pageIndex == pageData.length - 1)
                                ElevatedButton(
                                  onPressed: toLoginScreen,
                                  child: Text(
                                    'Get Started!',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: backgroundColor,
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: size.height * 0.1,
                child: Row(
                  children: [
                    TextButton(
                      child: Text(
                        pageIndex == 0 ? 'Skip' : 'Prev',
                        style: GoogleFonts.poppins(
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {
                        if (pageIndex == 0) {
                          toLoginScreen();
                          return;
                        } else {
                          prevPage(--pageIndex);
                        }
                      },
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            dotContainer(pageIndex == 0, size),
                            dotContainer(pageIndex == 1, size),
                            dotContainer(pageIndex == 2, size),
                          ],
                        ),
                      ),
                    ),
                    (pageIndex == 0) || (pageIndex == pageData.length - 1)
                        ? SizedBox(
                            width: size.width * .18,
                          )
                        : TextButton(
                            child: Text(
                              'Next',
                              style: GoogleFonts.poppins(
                                color: whiteColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onPressed: () {
                              if (pageIndex < pageData.length - 1) {
                                prevPage(++pageIndex);
                              }
                            },
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
