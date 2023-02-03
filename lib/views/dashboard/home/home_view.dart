import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/utils/TextFieldWidget.dart';
import 'package:uniplexs/utils/input_dec.dart';
import 'package:uniplexs/views/dashboard/home/widget/action/action_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/category/category_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/comedy/comedy_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/drama/drama_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/now_showing/now_showing_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/romance/romance_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/trailer/trailer_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/trending/trending_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: const PageStorageKey('home'),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                'Uniplex',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 35,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFieldWidget(
                label: '',
                keyBoard: TextInputType.name,
                inputAction: TextInputAction.search,
                inputDecoration: inputDec.copyWith(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: size.height * .02),
            TrendingWidget(),
            SizedBox(height: size.height * .02),
            const CategoryWidget(),
            const NowShowingWidget(),
            SizedBox(height: size.height * .01),
            const TrailerWidget(),
            SizedBox(height: size.height * .01),
            const ActionWidget(),
            SizedBox(height: size.height * .01),
            const ComedyWidget(),
            SizedBox(height: size.height * .01),
            const DramaWidget(),
            SizedBox(height: size.height * .01),
            const RomanceWidget(),
          ],
        ),
      ),
    );
  }
}
