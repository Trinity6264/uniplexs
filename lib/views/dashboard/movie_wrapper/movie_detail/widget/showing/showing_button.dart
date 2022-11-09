import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../../../constant/color_pallet.dart';
import '../../../../../../provider/dashboard/movie_wrapper_view_model/movie_detail/movie_detail_view_model.dart';

class ShowingButton extends StatelessWidget {
  final String title;
  final DetailTabs tab;
  final bool isTab;

  const ShowingButton({
    super.key,
    required this.isTab,
    required this.title,
    required this.tab,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    Size size = MediaQuery.of(context).size;
    final movieDetailModel = context.read<MovieDetailViewModel>();
    return GestureDetector(
      onTap: () => movieDetailModel.changedTabs(tab),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
        width: size.width * 0.3,
        alignment: Alignment.center,
        height: double.infinity,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: primaryColor,
          ),
          color: !isTab ? backgroundColor : primaryColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            color: isTab ? backgroundColor : whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
