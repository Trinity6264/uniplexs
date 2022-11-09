import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:uniplexs/constant/color_pallet.dart';

import '../../../../../constant/asset_path.dart';

import '../widget/showing/review/comment.dart';

class AllComments extends StatelessWidget {
  const AllComments({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            tabsRouter.current.router.navigateBack();
          },
          
          icon: Icon(Icons.arrow_back_ios, color: whiteColor),
        ),
        title: Text(
          'Comments',
          style: GoogleFonts.poppins(
            color: whiteColor,
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Comment(
                username: 'Kyei Yeboah',
                ratingStars: 5,
                date: '20/07/2022',
                userProfile: AssetPath.mega,
                content:
                    'This film is so beautiful even if there is no follow up. The Characters are likable to the T.I even enjoy...',
              ),
              Comment(
                username: 'Amoah Alexander',
                ratingStars: 2,
                date: '20/08/2022',
                userProfile: AssetPath.tee,
                content: 'Forget, the movie sucks... 😏',
              ),
              Comment(
                username: 'Micky1 ',
                ratingStars: 1,
                date: '06/08/2022',
                userProfile: AssetPath.micky1,
                content: 'What is that? tsw! 😏',
              ),
              Comment(
                username: 'Oduro Darko',
                ratingStars: 5,
                date: '20/09/2022',
                userProfile: AssetPath.kidi,
                content: 'OMG! wish we can give 10 stars i love the movie',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
