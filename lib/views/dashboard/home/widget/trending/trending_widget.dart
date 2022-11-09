import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/views/dashboard/home/widget/header_text_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/trending/trending_card_widget.dart';

import 'package:uniplexs/views/onboarding/widget/onboard_widget.dart';

class TrendingWidget extends StatelessWidget {
  TrendingWidget({Key? key}) : super(key: key);
  final PageController _pageController = PageController();
  void autoChangedSlider(int viewModel) {
    _pageController.keepPage;
    _pageController.keepScrollOffset;
    Timer.periodic(const Duration(seconds: 3), (e) {
      if (_pageController.hasClients) {
        if (viewModel < 3) {
          _pageController.animateToPage(++viewModel,
              duration: const Duration(milliseconds: 300), curve: Curves.ease);
        } else {
          _pageController.animateToPage(0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.bounceIn);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // autoChangedSlider(viewModel);
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * .36,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderTextWidget(
            onTap: () {},
            title: 'Trending',
          ),
          SizedBox(
            width: double.infinity,
            height: 180,
            child: PageView.builder(
              key: const PageStorageKey('sliders'),
              controller: _pageController,
              onPageChanged: (val){},
              pageSnapping: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return const TrendingCardWidget();
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: size.height * 0.05,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                dotContainer(0 == 0, size,
                    fColor: whiteColor),
                dotContainer(1== 1, size,
                    fColor: whiteColor),
                dotContainer(2 == 2, size,
                    fColor: whiteColor),
                dotContainer(3 == 3, size,
                    fColor: whiteColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
