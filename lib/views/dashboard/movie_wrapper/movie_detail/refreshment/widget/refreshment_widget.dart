// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../constant/color_pallet.dart';

class RefreshmentWidget extends StatelessWidget {
  final VoidCallback increment;
  final VoidCallback decrement;
  final Widget child;
  final String title;
  final String price;
  const RefreshmentWidget({
    Key? key,
    required this.increment,
    required this.decrement,
    required this.child,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: size.height * 0.2,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: size.width * 0.3,
                height: size.height * 0.1,
                color: primaryColor,
              ),
              SizedBox(width: size.width * 0.1),
              Expanded(
                child: SizedBox(
                  height: size.height * 0.15,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0,
                            ),
                          ),
                          Text(
                            price,
                            style: GoogleFonts.poppins(
                              color: whiteColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          subAddWidget(
                            size: size,
                            value: '-',
                            onTap: decrement,
                          ),
                          child,
                          subAddWidget(
                            size: size,
                            value: '+',
                            onTap: increment,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  GestureDetector subAddWidget({
    required Size size,
    required String value,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: size.width * .08,
        height: size.height * .08,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: paleGreenColor),
        ),
        child: Text(
          value,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: paleGreenColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
