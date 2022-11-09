import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniplexs/app/app.gr.dart';

import 'package:uniplexs/constant/asset_path.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/constant/custom_enums.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/movie/movie_view_model.dart';
import 'package:uniplexs/utils/TextFieldWidget.dart';
import 'package:uniplexs/utils/input_dec.dart';
import 'package:uniplexs/utils/section_widget.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie/widget/Calender/calender_widget.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie/widget/section_card/section_card_widget.dart';

class MovieView extends StatelessWidget {
  const MovieView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<MovieViewModel>();
     final tabsRouter = AutoTabsRouter.of(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: const PageStorageKey('movie_view'),
      backgroundColor: backgroundColor,
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CalenderWidget(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                width: double.infinity,
                height: size.height * .13,
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
              Container(
                width: double.infinity,
                height: size.height * 0.05,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SectionWidget(onTap: () {}, title: 'All Sections'),
                    SectionWidget(onTap: () {}, title: 'All Genres'),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: size.height * .5,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) => SectionCardWidget(
                    imageUrl: AssetPath.micky1,
                    onTap: () {
                      tabsRouter.current.router.navigate(MovieDetailRoute(
                        id: index,
                        imageUrl: AssetPath.kidi,
                        movieStat: index % 2 == 0
                            ? MovieStat.premier
                            : MovieStat.showing,
                      ));
                    },
                    id: index,
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
