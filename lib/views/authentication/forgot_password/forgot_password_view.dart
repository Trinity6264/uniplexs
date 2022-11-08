import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/utils/TextFieldWidget.dart';
import 'package:uniplexs/utils/input_dec.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please make sure the email you are providing is for you,\na short code will sent for verification',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: size.height * .1),
                TextFieldWidget(
                  label: 'Email',
                  keyBoard: TextInputType.emailAddress,
                  inputAction: TextInputAction.done,
                  inputDecoration: inputDec,
                ),
                SizedBox(height: size.height * .05),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: ElevatedButton(
                    // onPressed: model.showDialog,
                    onPressed: (){},
                    child: Text(
                      'Send Request',
                      style: GoogleFonts.poppins(
                        color: backgroundColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}
