import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:uniplexs/app/app.gr.dart';
import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/provider/authentication/login_view_model.dart';
import 'package:uniplexs/provider/authentication/signup_view_model.dart';
import 'package:uniplexs/provider/authentication/verify_view_model.dart';
import 'package:uniplexs/provider/dashboard/home/home_view_model.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/checkout/checkout_view_model.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/movie/movie_view_model.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/movie_detail/buy_tickets/buy_tickets_view_model.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/movie_detail/movie_detail_view_model.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/movie_detail/refreshment/refreshment_view_model.dart';
import 'package:uniplexs/service/apicall.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await dotenv.load();
  registerSetup();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = locator.get<AppRouter>();

    return MultiProvider(
      providers: [
        // Credential viewModels
        ChangeNotifierProvider<LoginViewModel>.value(value: LoginViewModel()),
        ChangeNotifierProvider<SignUpViewModel>.value(value: SignUpViewModel()),
        ChangeNotifierProvider<VerifyViewModel>.value(value: VerifyViewModel()),

        ChangeNotifierProvider<MovieViewModel>.value(value: MovieViewModel()),
        // Home viewModel
        ChangeNotifierProvider<HomeViewModel>.value(value: HomeViewModel()),

        ChangeNotifierProvider<MovieDetailViewModel>.value(
            value: MovieDetailViewModel()),
        ChangeNotifierProvider<BuyTicketsViewModel>.value(
            value: BuyTicketsViewModel()),
        ChangeNotifierProvider<RefreshmentViewModel>.value(
            value: RefreshmentViewModel()),
        ChangeNotifierProvider<CheckViewModel>.value(value: CheckViewModel()),
      ],
      child: MaterialApp.router(
        title: 'Uniplexs',
        debugShowCheckedModeBanner: false,
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
