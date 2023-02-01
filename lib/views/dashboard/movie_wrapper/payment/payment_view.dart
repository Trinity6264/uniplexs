// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/app/app.gr.dart';

import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/checkout/checkout_view_model.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/payment/widget/bank_widget.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/payment/widget/momo_widget.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/payment/widget/visa_widget.dart';

class PaymentView extends StatelessWidget {
  final PaymentMethod paymentMethod;
  const PaymentView({
    Key? key,
    required this.paymentMethod,
  }) : super(key: key);

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
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              paymentMethod == PaymentMethod.bank
                  ? const BankWidget()
                  : paymentMethod == PaymentMethod.momo
                      ? const MomoWidget()
                      : const VisaWidget(),
              GestureDetector(
                onTap: () {
                  // tabsRouter.current.router.navigate(const PaymentViewRoute());
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
                    'Pay #5,000',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: backgroundColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.2),
              SizedBox(
                width: size.width * 0.6,
                child: ElevatedButton(
                  onPressed: () => tabsRouter.current.router.navigateBack(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: whiteColor.withOpacity(.4),
                    padding: const EdgeInsets.all(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.swap_horiz, color: whiteColor),
                      Text(
                        'Change Payment Method',
                        style: GoogleFonts.poppins(
                          color: whiteColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              SizedBox(
                width: size.width * 0.4,
                child: ElevatedButton(
                  onPressed: () {
                    tabsRouter.current.router.navigate(const MovieViewRoute());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: whiteColor.withOpacity(.4),
                    padding: const EdgeInsets.all(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.close, color: whiteColor),
                      Text(
                        'Cancel Payment',
                        style: GoogleFonts.poppins(
                          color: whiteColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
