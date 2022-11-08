import 'package:flutter/widgets.dart';
import 'package:uniplexs/app/app_router.dart';
import 'package:uniplexs/app/locator.dart';

import '../../service/navigation.dart';

class SignUpViewModel extends ChangeNotifier {
  final _navService = locator<NavigationService>();
// getters
  bool get passwordVisibility => _passwordVisibility;
  bool _passwordVisibility = false;
  bool get agree => _agree;
  bool _agree = false;

  String? _fullName;
  String? get fullName => _fullName;
  String? _email;
  String? get email => _email;
  String? _password;
  String? get password => _password;
  String? _confirmPassword;
  String? get confirmPassword => _confirmPassword;

  void setEmail(String? val) {
    _email = val;
    notifyListeners();
  }

  void setFullName(String? val) {
    _fullName = val;
    notifyListeners();
  }

  void setPassword(String? val) {
    _password = val;
    notifyListeners();
  }

  void setConfirmPassword(String? val) {
    _confirmPassword = val;
    notifyListeners();
  }

  void onPasswordChange() {
    _passwordVisibility = !_passwordVisibility;
    notifyListeners();
  }

  void onChangedAgree(bool? val) {
    _agree = val!;
    notifyListeners();
  }

  void toLoginPage() {
    _navService.replaceNamed(AppRoutes.loginView);
  }

  void toVerifyAccount() {
    _navService.pushNamed(AppRoutes.verifyAccountView);
  }
}
