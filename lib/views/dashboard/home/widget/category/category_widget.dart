import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/views/dashboard/home/widget/category/category_button_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * .1,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, bottom: 20),
            width: double.infinity,
            child: Text(
              'Category',
              textAlign: TextAlign.start,
              textWidthBasis: TextWidthBasis.parent,
              style: GoogleFonts.poppins(
                color: whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:[] 
              // viewModel.genresData
              //     .map(
              //       (e) => CategoryButton(
              //         title: e.title,
              //         isTap: viewModel.title == e.title,
              //         onPressed: () => viewModel.onCategoryChanged(e.title!),
              //       ),
              //     )
              //     .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
