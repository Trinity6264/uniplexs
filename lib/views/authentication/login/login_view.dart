import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/utils/input_dec.dart';
import 'package:uniplexs/utils/TextFieldWidget.dart';
import 'package:uniplexs/provider/authentication/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  @override
  void initState() {
    final loginViewModel = context.read<LoginViewModel>();
    _emailController = TextEditingController(text: loginViewModel.email);
    _passwordController = TextEditingController(text: loginViewModel.password);
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginViewModel = context.read<LoginViewModel>();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * .08),
                Text(
                  'Welcome 👋',
                  style: GoogleFonts.poppins(
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 35.0,
                  ),
                ),
                SizedBox(height: size.height * .05),
                TextFieldWidget(
                  inputAction: TextInputAction.next,
                  keyBoard: TextInputType.emailAddress,
                  label: 'Email Address',
                  controller: _emailController,
                  onValueChanged: loginViewModel.setEmail,
                  inputDecoration: inputDec.copyWith(
                    hintText: 'user@gmail.com',
                    filled: true,
                    fillColor: whiteColor,
                  ),
                ),
                SizedBox(height: size.height * .05),
                Consumer<LoginViewModel>(
                  builder: (context, value, child) {
                    return TextFieldWidget(
                      label: 'Password',
                      inputAction: TextInputAction.done,
                      controller: _passwordController,
                      onValueChanged: loginViewModel.setPassword,
                      keyBoard: TextInputType.visiblePassword,
                      isObsecured: value.passwordVisibility,
                      inputDecoration: inputDec.copyWith(
                        hintText: '8 Characters',
                        filled: true,
                        fillColor: whiteColor,
                        suffixIcon: IconButton(
                          icon: Icon(
                            loginViewModel.passwordVisibility
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: loginViewModel.onPasswordChange,
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: size.height * .02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Consumer<LoginViewModel>(
                            builder: (context, value, child) {
                              return Checkbox(
                                value: value.rememberMe,
                                side: BorderSide(color: paleGreenColor),
                                onChanged: loginViewModel.onRememberMe,
                                hoverColor: whiteColor,
                                activeColor: paleGreenColor,
                                checkColor: blackColor,
                                focusColor: paleGreenColor,
                              );
                            },
                          ),
                          Text(
                            'Remember me',
                            style: GoogleFonts.poppins(
                              color: paleGreenColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: TextButton(
                        onPressed: loginViewModel.toForgotPasswordPage,
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.poppins(
                            color: paleGreenColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * .02),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: loginViewModel.toDashboardPage,
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(
                        color: backgroundColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * .02),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(text: 'Don\'t have an account?     '),
                        TextSpan(
                          text: 'Sign up',
                          recognizer: TapGestureRecognizer()
                            ..onTap = loginViewModel.toSignUpPage,
                          style: GoogleFonts.poppins(
                            color: paleGreenColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height * .02),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Or',
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                SizedBox(height: size.height * .03),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 60),
                  height: size.height * .06,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 88, 117, 134),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'G',
                        style: GoogleFonts.poppins(
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 38.0,
                        ),
                      ),
                      SizedBox(width: size.width * .01),
                      Container(
                        width: 1,
                        height: double.infinity,
                        color: whiteColor.withOpacity(0.5),
                      ),
                      SizedBox(width: size.width * .03),
                      Expanded(
                        child: Text(
                          'sign in with Google',
                          style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
