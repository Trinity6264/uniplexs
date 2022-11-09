

import 'package:flutter/widgets.dart';
import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/service/navigation.dart';

class BuyTicketsViewModel extends ChangeNotifier {
  final _navService = locator<NavigationService>();

  void back() {
    // _navService.back(id: 1);
  }

  void toRefreshmentPage() {
    // _navService.navigateTo(MovieWrapperRoutes.refreshmentView, id: 1);
  }

  // select date
  String daySelected = 'Wed';

  void onDayChanged(String val) {
    daySelected = val;
    notifyListeners();
  }
}
