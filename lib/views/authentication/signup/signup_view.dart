import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/provider/authentication/signup_view_model.dart';
import 'package:uniplexs/utils/TextFieldWidget.dart';
import 'package:uniplexs/utils/input_dec.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _passwordConfirmController;

  @override
  void initState() {
    final signUpView = context.read<SignUpViewModel>();
    _fullNameController = TextEditingController(text: signUpView.fullName);
    _emailController = TextEditingController(text: signUpView.email);
    _passwordController = TextEditingController(text: signUpView.password);
    _passwordConfirmController =
        TextEditingController(text: signUpView.confirmPassword);
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _fullNameController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final signUpViewModel = context.read<SignUpViewModel>();
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
                SizedBox(height: size.height * .03),
                Text(
                  'Create An Account',
                  style: GoogleFonts.poppins(
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(height: size.height * .02),
                TextFieldWidget(
                  inputAction: TextInputAction.next,
                  keyBoard: TextInputType.name,
                  label: 'Full Name*',
                  controller: _fullNameController,
                  onValueChanged: signUpViewModel.setFullName,
                  inputDecoration: inputDec.copyWith(
                    hintText: 'Tomiwa Mariam',
                    filled: true,
                    fillColor: whiteColor,
                  ),
                ),
                SizedBox(height: size.height * .02),
                TextFieldWidget(
                  inputAction: TextInputAction.next,
                  keyBoard: TextInputType.emailAddress,
                  controller: _emailController,
                  onValueChanged: signUpViewModel.setEmail,
                  label: 'Email Address*',
                  inputDecoration: inputDec.copyWith(
                    hintText: 'user@gmail.com',
                    filled: true,
                    fillColor: whiteColor,
                  ),
                ),
                SizedBox(height: size.height * .02),
                Consumer<SignUpViewModel>(
                  builder: (context, value, child) {
                    return TextFieldWidget(
                      label: 'Password*',
                      inputAction: TextInputAction.next,
                      keyBoard: TextInputType.visiblePassword,
                      isObsecured: value.passwordVisibility,
                      controller: _passwordController,
                      onValueChanged: signUpViewModel.setPassword,
                      inputDecoration: inputDec.copyWith(
                        hintText: '8 Characters',
                        filled: true,
                        fillColor: whiteColor,
                        suffixIcon: IconButton(
                          icon: Icon(
                            value.passwordVisibility
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: signUpViewModel.onPasswordChange,
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: size.height * .02),
                Consumer<SignUpViewModel>(
                  builder: (context, value, child) {
                    return TextFieldWidget(
                      label: 'Confirm Password*',
                      inputAction: TextInputAction.done,
                      keyBoard: TextInputType.visiblePassword,
                      isObsecured: value.passwordVisibility,
                      controller: _passwordConfirmController,
                      onValueChanged: signUpViewModel.setConfirmPassword,
                      inputDecoration: inputDec.copyWith(
                        hintText: '8 Characters',
                        filled: true,
                        fillColor: whiteColor,
                        suffixIcon: IconButton(
                          icon: Icon(
                            value.passwordVisibility
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: signUpViewModel.onPasswordChange,
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: size.height * .02),
                Row(
                  children: [
                    Consumer<SignUpViewModel>(
                      builder: (context, value, child) {
                        return Checkbox(
                          value: value.agree,
                          onChanged: signUpViewModel.onChangedAgree,
                          hoverColor: whiteColor,
                          activeColor: paleGreenColor,
                          side: BorderSide(color: paleGreenColor),
                          checkColor: blackColor,
                          focusColor: paleGreenColor,
                        );
                      },
                    ),
                    RichText(
                      text: TextSpan(children: [
                        const TextSpan(text: 'I agree to the'),
                        TextSpan(
                          text: ' Terms of Use*',
                          style: GoogleFonts.poppins(
                            color: paleGreenColor,
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: signUpViewModel.toVerifyAccount,
                    child: Text(
                      'Sign up!',
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
                        const TextSpan(text: 'Already have an account?     '),
                        TextSpan(
                          text: 'Login',
                          recognizer: TapGestureRecognizer()
                            ..onTap = signUpViewModel.toLoginPage,
                          style: GoogleFonts.poppins(
                            color: paleGreenColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
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
