// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:uniplexs/constant/color_pallet.dart';

class MovieCardWidget2 extends StatelessWidget {
  final String imgUrl;

  const MovieCardWidget2({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  static final baseUrl = dotenv.env['IMAGE_BASE_URL'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .25,
      height: size.height * .15,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: blackColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CachedNetworkImage(
          imageUrl: '$baseUrl$imgUrl',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
