import 'package:flutter/widgets.dart';
import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/service/navigation.dart';

class VerifyViewModel extends ChangeNotifier {
  final _navService = locator.get<NavigationService>();
  // String get otpCode => _otpCode;
  String otpCode = '';

  void setOtp(String val) {
    // _otpCode += val;
  }

  void back() {
    _navService.pop();
  }
}
