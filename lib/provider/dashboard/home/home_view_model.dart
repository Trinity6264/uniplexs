import 'package:flutter/widgets.dart';
import 'package:uniplexs/model/genres_model.dart';

class HomeViewModel extends ChangeNotifier {
  int pageIndex = 0;

  // Catch the index of the current page
  void onPageChanged(int value) {
    pageIndex = value;
    notifyListeners();
  }

  // !Category list
  List<GenresModel> genresData = [
    GenresModel(id: 0, title: 'All'),
    GenresModel(id: 1, title: 'Action'),
    GenresModel(id: 2, title: 'Comedy'),
    GenresModel(id: 3, title: 'Drama'),
    GenresModel(id: 4, title: 'Romance'),
  ];

  String _title = 'All';
  String get title => _title;

  void onCategoryChanged(String val) {
    _title = val;
    notifyListeners();
  }
}
