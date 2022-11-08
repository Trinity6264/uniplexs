import 'package:uniplexs/app/app.gr.dart';
import 'package:uniplexs/app/locator.dart';

class NavigationService {
  static final serviceLocator = locator.get<AppRouter>();

  void replaceNamed(String path) {
    serviceLocator.replaceNamed(path);
  }
  void pushNamed(String path) {
    serviceLocator.pushNamed(path);
  }

  void pop() {
    serviceLocator.pop();
  }
  
}
