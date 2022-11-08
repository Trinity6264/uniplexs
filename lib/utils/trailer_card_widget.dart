import 'package:flutter/material.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class TrailerCardWidget extends StatelessWidget {
  const TrailerCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .25,
      height: size.height * .23,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
