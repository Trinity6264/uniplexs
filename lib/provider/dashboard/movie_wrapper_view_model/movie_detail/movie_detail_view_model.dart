import 'package:flutter/widgets.dart';
import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/service/navigation.dart';

enum DetailTabs { About, Reviews }

class MovieDetailViewModel extends ChangeNotifier {
  final _navService = locator<NavigationService>();

  DetailTabs currentTab = DetailTabs.About;
  // Change showing movie tab
  void changedTabs(DetailTabs tab) {
    currentTab = tab;
    notifyListeners();
  }

  void back() {
    _navService.pop();
  }

  void toCommentPage() {
    // _navService.navigateTo(MovieWrapperRoutes.allComments, id: 1);
  }

  void toBuyTickets() {
    // _navService.navigateTo(MovieWrapperRoutes.buyTicketsView, id: 1);
  }

  // ? but tickets

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
