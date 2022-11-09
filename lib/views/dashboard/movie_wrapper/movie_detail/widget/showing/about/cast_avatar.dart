import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../constant/color_pallet.dart';

class CastAvatar extends StatelessWidget {
  final String castName;
  final String pictureUrl;
  const CastAvatar(
      {super.key, required this.castName, required this.pictureUrl});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: size.width * .2,
      height: size.height * .12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            maxRadius: 24,
            backgroundColor: primaryColor,
            backgroundImage: AssetImage(pictureUrl),
          ),
          Text(
            castName,
            textAlign: TextAlign.center,
            softWrap: true,
            overflow: TextOverflow.fade,
            style: GoogleFonts.poppins(
              color: whiteColor,
            ),
          )
        ],
      ),
    );
  }
}
