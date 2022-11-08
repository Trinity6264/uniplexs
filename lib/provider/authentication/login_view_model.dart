import 'package:flutter/widgets.dart';

import 'package:uniplexs/app/app_router.dart';
import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/service/navigation.dart';

class LoginViewModel extends ChangeNotifier {
  bool get passwordVisibility => _passwordVisibility;
  bool _passwordVisibility = true;
  bool? get rememberMe => _rememberMe;
  bool? _rememberMe = false;
  final _navService = locator.get<NavigationService>();

  String? _email;
  String? get email => _email;
  String? _password;
  String? get password => _password;

  void setEmail(String? val) {
    _email = val;
    notifyListeners();
  }

  void setPassword(String? val) {
    _password = val;
    notifyListeners();
  }

  void onPasswordChange() {
    _passwordVisibility = !passwordVisibility;
    notifyListeners();
  }

  void onRememberMe(bool? val) {
    _rememberMe = val;
    notifyListeners();
  }

  void toSignUpPage() {
    _navService.replaceNamed(AppRoutes.signUpView);
  }

  void toForgotPasswordPage() {
    _navService.pushNamed(AppRoutes.forgotPasswordView);
  }

  void toDashboardPage() {
    _navService.replaceNamed(AppRoutes.dashboardView);
  }
}
