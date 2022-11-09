import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uniplexs/app/app.gr.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/movie_detail/refreshment/refreshment_view_model.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/refreshment/widget/refreshment_widget.dart';

class RefreshmentView extends StatelessWidget {
  const RefreshmentView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final refreshViewModel = context.read<RefreshmentViewModel>();
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
          'Add Refreshments',
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
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    RefreshmentWidget(
                      decrement: () => refreshViewModel
                          .onCocaColaChanged(Operation.substract),
                      increment: () =>
                          refreshViewModel.onCocaColaChanged(Operation.add),
                      price: '\$40',
                      title: 'Coca Cola',
                      child: Consumer<RefreshmentViewModel>(
                        builder: (context, value, child) {
                          return Text(
                            value.cocaColaValue.toString(),
                            style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0,
                            ),
                          );
                        },
                      ),
                    ),
                    RefreshmentWidget(
                      decrement: () =>
                          refreshViewModel.onPepsiChanged(Operation.substract),
                      increment: () =>
                          refreshViewModel.onPepsiChanged(Operation.add),
                      price: '\$50',
                      title: 'Pepsi',
                      child: Consumer<RefreshmentViewModel>(
                        builder: (context, value, child) {
                          return Text(
                            value.pepsiValue.toString(),
                            style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0,
                            ),
                          );
                        },
                      ),
                    ),
                    RefreshmentWidget(
                      decrement: () =>
                          refreshViewModel.onPopChanged(Operation.substract),
                      increment: () =>
                          refreshViewModel.onPopChanged(Operation.add),
                      price: '\$30',
                      title: 'Pop Corn',
                      child: Consumer<RefreshmentViewModel>(
                        builder: (context, value, child) {
                          return Text(
                            value.popCornValue.toString(),
                            style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height * .02),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total #3,340',
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 22.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      tabsRouter.current.router
                          .navigate(const CheckoutViewRoute());
                    },
                    child: Container(
                      width: size.width * 0.4,
                      alignment: Alignment.center,
                      height: size.height * 0.05,
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
          ],
        ),
      ),
    );
  }
}
