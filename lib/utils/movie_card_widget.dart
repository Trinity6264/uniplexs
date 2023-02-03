// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:uniplexs/constant/color_pallet.dart';

class MovieCardWidget extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;

  const MovieCardWidget({
    Key? key,
    required this.imgUrl,
    required this.onTap,
  }) : super(key: key);

  static final baseUrl = dotenv.env['IMAGE_BASE_URL'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * .25,
        height: size.height * .13,
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
      ),
    );
  }
}
