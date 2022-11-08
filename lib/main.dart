import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:uniplexs/app/app.gr.dart';
import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/provider/authentication/login_view_model.dart';
import 'package:uniplexs/provider/authentication/signup_view_model.dart';
import 'package:uniplexs/provider/authentication/verify_view_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  registerSetup();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _router = locator.get<AppRouter>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginViewModel>.value(value: LoginViewModel()),
        ChangeNotifierProvider<SignUpViewModel>.value(value: SignUpViewModel()),
        ChangeNotifierProvider<VerifyViewModel>.value(value: VerifyViewModel())
      ],
      child: MaterialApp.router(
        title: 'Uniplexs',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        routerDelegate: _router.delegate(),
        routeInformationParser: _router.defaultRouteParser(),
      ),
    );
  }
}
