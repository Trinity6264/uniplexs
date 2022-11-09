import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:uniplexs/app/app.gr.dart';
import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/provider/authentication/login_view_model.dart';
import 'package:uniplexs/provider/authentication/signup_view_model.dart';
import 'package:uniplexs/provider/authentication/verify_view_model.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/movie/movie_view_model.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/movie_detail/buy_tickets/buy_tickets_view_model.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/movie_detail/movie_detail_view_model.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/movie_detail/refreshment/refreshment_view_model.dart';

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
    final router = locator.get<AppRouter>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginViewModel>.value(value: LoginViewModel()),
        ChangeNotifierProvider<SignUpViewModel>.value(value: SignUpViewModel()),
        ChangeNotifierProvider<VerifyViewModel>.value(value: VerifyViewModel()),
        ChangeNotifierProvider<MovieViewModel>.value(value: MovieViewModel()),
        ChangeNotifierProvider<MovieDetailViewModel>.value(
            value: MovieDetailViewModel()),
        ChangeNotifierProvider<BuyTicketsViewModel>.value(
            value: BuyTicketsViewModel()),
        ChangeNotifierProvider<RefreshmentViewModel>.value(
            value: RefreshmentViewModel()),
      ],
      child: MaterialApp.router(
        title: 'Uniplexs',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          listTileTheme: ListTileThemeData(
            iconColor: paleGreenColor,
            selectedColor: paleGreenColor,
          ),
        ),
        routerDelegate: router.delegate(),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
