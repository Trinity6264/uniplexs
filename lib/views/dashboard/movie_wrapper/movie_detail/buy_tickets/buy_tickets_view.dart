import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/app/app.gr.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/buy_tickets/seat_wrapper/seat_wrapper.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/buy_tickets/ticket_date_time/ticket_date_time.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/buy_tickets/widget/sun_shape_widget.dart';

class BuyTicketsView extends StatelessWidget {
  const BuyTicketsView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final tabsRouter = AutoTabsRouter.of(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        leading: IconButton(
          onPressed: () => tabsRouter.current.router.navigateBack(),
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: whiteColor,
          ),
        ),
        title: Text(
          'Tickets',
          style: GoogleFonts.poppins(
            color: whiteColor,
            fontWeight: FontWeight.w600,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TicketDateTime(),
              SizedBox(height: size.height * .02),
              const SunShapeWidget(),
              SizedBox(height: size.height * .02),
              const SeatWrapper(),
              SizedBox(height: size.height * .02),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total: \$3000 ',
                      style: GoogleFonts.poppins(
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        tabsRouter.current.router
                            .navigate(const RefreshmentViewRoute());
                      },
                      child: Container(
                        width: size.width * 0.4,
                        alignment: Alignment.center,
                        height: size.height * 0.06,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Proceed',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: backgroundColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * .02),
            ],
          ),
        ),
      ),
    );
  }
}
