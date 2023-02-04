import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/asset_path.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class MovieDetailsViewWidget extends StatelessWidget {
  const MovieDetailsViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: backgroundColor,
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                AssetPath.tee,
                width: double.infinity,
                height: size.height * .45,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Container(
                  color: backgroundColor,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: size.height * .4,
                color: backgroundColor.withOpacity(.4),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: whiteColor,
                      ),
                    ),
                    SizedBox(height: size.height * .15),
                    Text(
                      'Silicon Valley',
                      style: GoogleFonts.poppins(
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * .09,
                      ),
                    ),
                    Row(
                      children: [
                        borderText(txt: '6 seasons'),
                        SizedBox(width: size.width * .03),
                        borderText(txt: 'USA'),
                        SizedBox(width: size.width * .03),
                        borderText(txt: 'Rating 8.5'),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: size.width * .15,
                                height: size.height * .06,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [primaryColor, lightPrimaryColor],
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Watch Now',
                                  style: GoogleFonts.poppins(
                                    color: whiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * .05,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              width: size.width * .15,
                              height: size.height * .06,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: grayColor),
                              ),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: whiteColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * .03),
                        Row(
                          children: [
                            mediaIcons(
                              icon: Icons.video_collection,
                              txtName: 'Trailer',
                            ),
                            SizedBox(width: size.width * .07),
                            mediaIcons(
                              icon: Icons.file_download_outlined,
                              txtName: 'Download',
                            ),
                            SizedBox(width: size.width * .07),
                            mediaIcons(
                              icon: Icons.bookmark_outline_rounded,
                              txtName: 'Wishlist',
                            ),
                            SizedBox(width: size.width * .07),
                            mediaIcons(
                              icon: Icons.file_upload_outlined,
                              txtName: 'Trailer',
                            ),
                          ],
                        ),
                        Divider(color: grayColor, thickness: 1.5),
                        SizedBox(height: size.height * .02),
                        Text(
                          'Introduction',
                          style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * .06,
                          ),
                        ),
                        SizedBox(height: size.height * .01),
                        Text(
                          'sadkhfffffffghhsd kdhskhfkhfs skfskfsfs daskhfshkfs sfljgjl sfljgjljg fsljjgdjgdl sdljfsjjgljdg akdfhkfhssf ahsffjsf adkfskfss jadfsjkjfsj adkhadhkd',
                          style: GoogleFonts.poppins(
                            color: whiteColor,
                          ),
                        ),
                        SizedBox(height: size.height * .01),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Genre:   ',
                              style: GoogleFonts.poppins(
                                color: whiteColor,
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * .04,
                              ),
                            ),
                            TextSpan(
                              text: 'Comedy',
                              style: GoogleFonts.poppins(
                                color: whiteColor,
                                fontSize: size.width * .035,
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(height: size.height * .01),
                        Text(
                          'Actors',
                          style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * .06,
                          ),
                        ),
                        SizedBox(height: size.height * .01),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column mediaIcons({
    required String txtName,
    required IconData icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: whiteColor),
        const SizedBox(height: 5),
        Text(
          txtName,
          style: GoogleFonts.poppins(
            color: whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Container borderText({required String txt}) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: whiteColor),
      ),
      alignment: Alignment.center,
      child: Text(
        txt,
        style: GoogleFonts.poppins(
          color: whiteColor,
        ),
      ),
    );
  }
}
