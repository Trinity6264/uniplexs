import 'package:flutter/material.dart';
import '../../../../../../constant/color_pallet.dart';

class SeatWrapper extends StatelessWidget {
  const SeatWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      color: primaryColor,
    );
  }
}
