import 'dart:developer';

import 'package:flutter/foundation.dart';

// payment enum

enum PaymentMethod { momo, visa, bank }

class CheckViewModel extends ChangeNotifier {
  PaymentMethod? paymentSelected;

  void onChangedPayment(PaymentMethod? value) {
    paymentSelected = value;
    notifyListeners();
  }
}
