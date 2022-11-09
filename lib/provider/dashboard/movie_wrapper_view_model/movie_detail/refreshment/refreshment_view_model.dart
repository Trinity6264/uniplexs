import 'package:flutter/widgets.dart';

import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/service/navigation.dart';



enum Operation { add, substract }

class RefreshmentViewModel extends ChangeNotifier {
  final _navService = locator<NavigationService>();

  int _cocaColaValue = 0;
  int get cocaColaValue => _cocaColaValue;
  int _pepsiValue = 0;
  int get pepsiValue => _pepsiValue;
  int _popCornValue = 0;
  int get popCornValue => _popCornValue;

  void onCocaColaChanged( Operation op) {
    Operation.add == op ? _cocaColaValue++ : _cocaColaValue--;
    notifyListeners();
  }

  void onPepsiChanged(Operation op) {
    Operation.add == op ? _pepsiValue++ : _pepsiValue--;
    notifyListeners();
  }

  void onPopChanged( Operation op) {
    Operation.add == op ? _popCornValue++ : _popCornValue--;
    notifyListeners();
  }

  void back() {
    // _navService.back(id: 1);
  }
}
