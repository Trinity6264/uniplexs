import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import '../../../../../../constant/color_pallet.dart';

class SunShapeWidget extends StatelessWidget {
  const SunShapeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * .18,
      color: paleGreenColor,
    );
  }
}
