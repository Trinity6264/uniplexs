import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/asset_path.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class SectionCardWidget extends StatelessWidget {
  final VoidCallback onTap;
  final int id;
  final String imageUrl;
  const SectionCardWidget({
    super.key,
    required this.onTap,
    required this.id,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 15),
        height: size.height * 0.23,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: whiteColor.withOpacity(.3),
        ),
        child: Row(
          children: [
            Hero(
              tag: id,
              child: Container(
                width: size.width * 0.3,
                decoration: BoxDecoration(
                  color: primaryColor,
                  image: const DecorationImage(
                    image: AssetImage(AssetPath.micky1),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Attack on Titans',
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: size.height * .02),
                  Text(
                    'Genre: Drama',
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(height: size.height * .015),
                  SizedBox(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          color: primaryColor,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: primaryColor,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: primaryColor,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: primaryColor,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: primaryColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * .02),
                  Text(
                    '1hr 30mins',
                    style: GoogleFonts.poppins(
                      color: whiteColor,
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
