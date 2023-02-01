import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uniplexs/app/app.gr.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/checkout/checkout_view_model.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/checkout/widget/checkout_card.dart';

import '../../../../constant/color_pallet.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    final checkoutViewModel = context.read<CheckViewModel>();
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
              Consumer<CheckViewModel>(
                builder: (context, value, child) {
                  return RadioListTile(
                    value: PaymentMethod.momo,
                    groupValue: checkoutViewModel.paymentSelected,
                    onChanged: checkoutViewModel.onChangedPayment,
                    selected: value.paymentSelected == PaymentMethod.momo,
                    title: Text(
                      'Momo Payment',
                      style: GoogleFonts.poppins(
                        color: whiteColor,
                      ),
                    ),
                  );
                },
              ),
              Consumer<CheckViewModel>(
                builder: (context, value, child) {
                  return RadioListTile(
                    value: PaymentMethod.visa,
                    groupValue: checkoutViewModel.paymentSelected,
                    selected: value.paymentSelected == PaymentMethod.visa,
                    onChanged: checkoutViewModel.onChangedPayment,
                    title: Text(
                      'Visa Payment',
                      style: GoogleFonts.poppins(
                        color: whiteColor,
                      ),
                    ),
                  );
                },
              ),
              Consumer<CheckViewModel>(
                builder: (context, value, child) {
                  return RadioListTile(
                    value: PaymentMethod.bank,
                    selected: value.paymentSelected == PaymentMethod.bank,
                    groupValue: checkoutViewModel.paymentSelected,
                    onChanged: checkoutViewModel.onChangedPayment,
                    title: Text(
                      'Pay via Bank transfer',
                      style: GoogleFonts.poppins(
                        color: whiteColor,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: size.height * 0.03),
              GestureDetector(
                onTap: () {
                  if (checkoutViewModel.paymentSelected == null) return;
                  tabsRouter.current.router.navigate(PaymentViewRoute(
                    paymentMethod: checkoutViewModel.paymentSelected!,
                  ));
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
