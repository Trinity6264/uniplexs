import 'package:flutter/foundation.dart';
import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/service/navigation.dart';


class AllMovieCommentsViewModel extends ChangeNotifier {
  final _navService = locator<NavigationService>();

  void back() {
    // _navService.back(id: 1);
  }
}
