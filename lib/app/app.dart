import 'package:auto_route/annotations.dart';
import 'package:uniplexs/views/authentication/forgot_password/forgot_password_view.dart';
import 'package:uniplexs/views/authentication/login/login_view.dart';
import 'package:uniplexs/views/authentication/new_password/new_password_view.dart';
import 'package:uniplexs/views/authentication/signup/signup_view.dart';
import 'package:uniplexs/views/authentication/verify_account/verify_account_view.dart';
import 'package:uniplexs/views/onboarding/onboard_view.dart';
import 'package:uniplexs/views/splash/splash_view.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(path: '/', page: SplashView,initial: true),
  AutoRoute(path: '/on-board-view', page: OnBoardView),
  AutoRoute(path: '/login-view', page: LoginView),
  AutoRoute(path: '/sign-up-view', page: SignUpView),
  AutoRoute(path: '/verify-account-view', page: VerifyAccountView),
  AutoRoute(path: '/forgot-password-view', page: ForgotPasswordView),
  AutoRoute(path: '/new-pass-word-view', page: NewPassWordView),
])
class $AppRouter {}
