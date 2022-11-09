import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/checkout/widget/checkout_card.dart';

import '../../../../constant/color_pallet.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    Size size = MediaQuery.of(context).size;
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
          'Checkout',
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
              const CheckoutCard(),
              SizedBox(height: size.height * 0.03),
              totalWidget(title: 'SubTotal', amount: '#2000'),
              SizedBox(height: size.height * 0.03),
              totalWidget(title: 'Refreshment', amount: '#200'),
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '#2,200',
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                'Payment Method',
                style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              RadioListTile(
                value: true,
                groupValue: 'payment',
                onChanged: (val) {},
                title: Text(
                  'Momo Payment',
                  style: GoogleFonts.poppins(
                    color: whiteColor,
                  ),
                ),
              ),
              RadioListTile(
                value: true,
                selected: true,
                groupValue: 'payment',
                activeColor: paleGreenColor,
                onChanged: (val) {},
                title: Text(
                  'Visa Payment',
                  style: GoogleFonts.poppins(
                    color: whiteColor,
                  ),
                ),
              ),
              RadioListTile(
                value: false,
                groupValue: 'payment',
                onChanged: (val) {},
                title: Text(
                  'Pay via Bank transfer',
                  style: GoogleFonts.poppins(
                    color: whiteColor,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              GestureDetector(
                onTap: () {
                  // tabsRouter.current.router
                  //     .navigate(const CheckoutViewRoute());
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  height: size.height * 0.05,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Proceed to Payment',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: backgroundColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }

  Row totalWidget({required String title, required String amount}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            color: whiteColor,
            fontSize: 16.0,
          ),
        ),
        Text(
          amount,
          style: GoogleFonts.poppins(
            color: whiteColor,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
