// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../views/authentication/forgot_password/forgot_password_view.dart'
    as _i6;
import '../views/authentication/login/login_view.dart' as _i3;
import '../views/authentication/new_password/new_password_view.dart' as _i7;
import '../views/authentication/signup/signup_view.dart' as _i4;
import '../views/authentication/verify_account/verify_account_view.dart' as _i5;
import '../views/onboarding/onboard_view.dart' as _i2;
import '../views/splash/splash_view.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashViewRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashView(),
      );
    },
    OnBoardViewRoute.name: (routeData) {
      final args = routeData.argsAs<OnBoardViewRouteArgs>(
          orElse: () => const OnBoardViewRouteArgs());
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.OnBoardView(key: args.key),
      );
    },
    LoginViewRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.LoginView(),
      );
    },
    SignUpViewRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SignUpView(),
      );
    },
    VerifyAccountViewRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.VerifyAccountView(),
      );
    },
    ForgotPasswordViewRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ForgotPasswordView(),
      );
    },
    NewPassWordViewRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.NewPassWordView(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SplashViewRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          OnBoardViewRoute.name,
          path: '/on-board-view',
        ),
        _i8.RouteConfig(
          LoginViewRoute.name,
          path: '/login-view',
        ),
        _i8.RouteConfig(
          SignUpViewRoute.name,
          path: '/sign-up-view',
        ),
        _i8.RouteConfig(
          VerifyAccountViewRoute.name,
          path: '/verify-account-view',
        ),
        _i8.RouteConfig(
          ForgotPasswordViewRoute.name,
          path: '/forgot-password-view',
        ),
        _i8.RouteConfig(
          NewPassWordViewRoute.name,
          path: '/new-pass-word-view',
        ),
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashViewRoute extends _i8.PageRouteInfo<void> {
  const SplashViewRoute()
      : super(
          SplashViewRoute.name,
          path: '/',
        );

  static const String name = 'SplashViewRoute';
}

/// generated route for
/// [_i2.OnBoardView]
class OnBoardViewRoute extends _i8.PageRouteInfo<OnBoardViewRouteArgs> {
  OnBoardViewRoute({_i9.Key? key})
      : super(
          OnBoardViewRoute.name,
          path: '/on-board-view',
          args: OnBoardViewRouteArgs(key: key),
        );

  static const String name = 'OnBoardViewRoute';
}

class OnBoardViewRouteArgs {
  const OnBoardViewRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'OnBoardViewRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.LoginView]
class LoginViewRoute extends _i8.PageRouteInfo<void> {
  const LoginViewRoute()
      : super(
          LoginViewRoute.name,
          path: '/login-view',
        );

  static const String name = 'LoginViewRoute';
}

/// generated route for
/// [_i4.SignUpView]
class SignUpViewRoute extends _i8.PageRouteInfo<void> {
  const SignUpViewRoute()
      : super(
          SignUpViewRoute.name,
          path: '/sign-up-view',
        );

  static const String name = 'SignUpViewRoute';
}

/// generated route for
/// [_i5.VerifyAccountView]
class VerifyAccountViewRoute extends _i8.PageRouteInfo<void> {
  const VerifyAccountViewRoute()
      : super(
          VerifyAccountViewRoute.name,
          path: '/verify-account-view',
        );

  static const String name = 'VerifyAccountViewRoute';
}

/// generated route for
/// [_i6.ForgotPasswordView]
class ForgotPasswordViewRoute extends _i8.PageRouteInfo<void> {
  const ForgotPasswordViewRoute()
      : super(
          ForgotPasswordViewRoute.name,
          path: '/forgot-password-view',
        );

  static const String name = 'ForgotPasswordViewRoute';
}

/// generated route for
/// [_i7.NewPassWordView]
class NewPassWordViewRoute extends _i8.PageRouteInfo<void> {
  const NewPassWordViewRoute()
      : super(
          NewPassWordViewRoute.name,
          path: '/new-pass-word-view',
        );

  static const String name = 'NewPassWordViewRoute';
}
