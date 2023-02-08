import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/asset_path.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class TickerCardWidget extends StatelessWidget {
  final VoidCallback onTap;
  const TickerCardWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: size.height * .15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: blackColor,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(10),
              ),
              child: Image.asset(
                AssetPath.elvis,
                fit: BoxFit.cover,
                width: size.width * .3,
                height: double.infinity,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Movie Title',
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Amount: \$100',
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                    ),
                  ),
                  Text(
                    '2nd December, 2013',
                    style: GoogleFonts.poppins(
                      color: primaryColor,
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
