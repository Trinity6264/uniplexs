// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../constant/custom_enums.dart' as _i15;
import '../provider/dashboard/movie_wrapper_view_model/checkout/checkout_view_model.dart'
    as _i16;
import '../views/dashboard/dashboard_view.dart' as _i1;
import '../views/dashboard/home/home_view.dart' as _i2;
import '../views/dashboard/movie_wrapper/checkout/checkout_view.dart' as _i11;
import '../views/dashboard/movie_wrapper/movie/movie_view.dart' as _i6;
import '../views/dashboard/movie_wrapper/movie_detail/buy_tickets/buy_tickets_view.dart'
    as _i9;
import '../views/dashboard/movie_wrapper/movie_detail/movie_comments/all_comments.dart'
    as _i8;
import '../views/dashboard/movie_wrapper/movie_detail/movie_detail.dart' as _i7;
import '../views/dashboard/movie_wrapper/movie_detail/refreshment/refreshment_view.dart'
    as _i10;
import '../views/dashboard/movie_wrapper/movie_wrapper.dart' as _i3;
import '../views/dashboard/movie_wrapper/payment/payment_view.dart' as _i12;
import '../views/dashboard/profile/profile_view.dart' as _i5;
import '../views/dashboard/tickets/tickets_view.dart' as _i4;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    DashboardViewRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardView(),
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomeView(),
      );
    },
    MovieWrapperRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MovieWrapper(),
      );
    },
    TicketViewRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.TicketView(),
      );
    },
    ProfileViewRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileView(),
      );
    },
    MovieViewRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.MovieView(),
      );
    },
    MovieDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.MovieDetail(
          key: args.key,
          id: args.id,
          imageUrl: args.imageUrl,
          movieStat: args.movieStat,
        ),
      );
    },
    AllCommentsRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.AllComments(),
      );
    },
    BuyTicketsViewRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.BuyTicketsView(),
      );
    },
    RefreshmentViewRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.RefreshmentView(),
      );
    },
    CheckoutViewRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.CheckoutView(),
      );
    },
    PaymentViewRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentViewRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.PaymentView(
          key: args.key,
          paymentMethod: args.paymentMethod,
        ),
      );
    },
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/dashboard-view',
          fullMatch: true,
        ),
        _i13.RouteConfig(
          DashboardViewRoute.name,
          path: '/dashboard-view',
          children: [
            _i13.RouteConfig(
              HomeViewRoute.name,
              path: '',
              parent: DashboardViewRoute.name,
            ),
            _i13.RouteConfig(
              MovieWrapperRoute.name,
              path: 'movie',
              parent: DashboardViewRoute.name,
              children: [
                _i13.RouteConfig(
                  MovieViewRoute.name,
                  path: '',
                  parent: MovieWrapperRoute.name,
                ),
                _i13.RouteConfig(
                  MovieDetailRoute.name,
                  path: 'movie-detail',
                  parent: MovieWrapperRoute.name,
                ),
                _i13.RouteConfig(
                  AllCommentsRoute.name,
                  path: 'all-comments',
                  parent: MovieWrapperRoute.name,
                ),
                _i13.RouteConfig(
                  BuyTicketsViewRoute.name,
                  path: 'buy-tickets-view',
                  parent: MovieWrapperRoute.name,
                ),
                _i13.RouteConfig(
                  RefreshmentViewRoute.name,
                  path: 'refreshment-view',
                  parent: MovieWrapperRoute.name,
                ),
                _i13.RouteConfig(
                  CheckoutViewRoute.name,
                  path: 'checkout-view',
                  parent: MovieWrapperRoute.name,
                ),
                _i13.RouteConfig(
                  PaymentViewRoute.name,
                  path: 'payment-view',
                  parent: MovieWrapperRoute.name,
                ),
              ],
            ),
            _i13.RouteConfig(
              TicketViewRoute.name,
              path: 'ticket',
              parent: DashboardViewRoute.name,
            ),
            _i13.RouteConfig(
              ProfileViewRoute.name,
              path: 'profile',
              parent: DashboardViewRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.DashboardView]
class DashboardViewRoute extends _i13.PageRouteInfo<void> {
  const DashboardViewRoute({List<_i13.PageRouteInfo>? children})
      : super(
          DashboardViewRoute.name,
          path: '/dashboard-view',
          initialChildren: children,
        );

  static const String name = 'DashboardViewRoute';
}

/// generated route for
/// [_i2.HomeView]
class HomeViewRoute extends _i13.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '',
        );

  static const String name = 'HomeViewRoute';
}

/// generated route for
/// [_i3.MovieWrapper]
class MovieWrapperRoute extends _i13.PageRouteInfo<void> {
  const MovieWrapperRoute({List<_i13.PageRouteInfo>? children})
      : super(
          MovieWrapperRoute.name,
          path: 'movie',
          initialChildren: children,
        );

  static const String name = 'MovieWrapperRoute';
}

/// generated route for
/// [_i4.TicketView]
class TicketViewRoute extends _i13.PageRouteInfo<void> {
  const TicketViewRoute()
      : super(
          TicketViewRoute.name,
          path: 'ticket',
        );

  static const String name = 'TicketViewRoute';
}

/// generated route for
/// [_i5.ProfileView]
class ProfileViewRoute extends _i13.PageRouteInfo<void> {
  const ProfileViewRoute()
      : super(
          ProfileViewRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileViewRoute';
}

/// generated route for
/// [_i6.MovieView]
class MovieViewRoute extends _i13.PageRouteInfo<void> {
  const MovieViewRoute()
      : super(
          MovieViewRoute.name,
          path: '',
        );

  static const String name = 'MovieViewRoute';
}

/// generated route for
/// [_i7.MovieDetail]
class MovieDetailRoute extends _i13.PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute({
    _i14.Key? key,
    required int id,
    required String imageUrl,
    required _i15.MovieStat movieStat,
  }) : super(
          MovieDetailRoute.name,
          path: 'movie-detail',
          args: MovieDetailRouteArgs(
            key: key,
            id: id,
            imageUrl: imageUrl,
            movieStat: movieStat,
          ),
        );

  static const String name = 'MovieDetailRoute';
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({
    this.key,
    required this.id,
    required this.imageUrl,
    required this.movieStat,
  });

  final _i14.Key? key;

  final int id;

  final String imageUrl;

  final _i15.MovieStat movieStat;

  @override
  String toString() {
    return 'MovieDetailRouteArgs{key: $key, id: $id, imageUrl: $imageUrl, movieStat: $movieStat}';
  }
}

/// generated route for
/// [_i8.AllComments]
class AllCommentsRoute extends _i13.PageRouteInfo<void> {
  const AllCommentsRoute()
      : super(
          AllCommentsRoute.name,
          path: 'all-comments',
        );

  static const String name = 'AllCommentsRoute';
}

/// generated route for
/// [_i9.BuyTicketsView]
class BuyTicketsViewRoute extends _i13.PageRouteInfo<void> {
  const BuyTicketsViewRoute()
      : super(
          BuyTicketsViewRoute.name,
          path: 'buy-tickets-view',
        );

  static const String name = 'BuyTicketsViewRoute';
}

/// generated route for
/// [_i10.RefreshmentView]
class RefreshmentViewRoute extends _i13.PageRouteInfo<void> {
  const RefreshmentViewRoute()
      : super(
          RefreshmentViewRoute.name,
          path: 'refreshment-view',
        );

  static const String name = 'RefreshmentViewRoute';
}

/// generated route for
/// [_i11.CheckoutView]
class CheckoutViewRoute extends _i13.PageRouteInfo<void> {
  const CheckoutViewRoute()
      : super(
          CheckoutViewRoute.name,
          path: 'checkout-view',
        );

  static const String name = 'CheckoutViewRoute';
}

/// generated route for
/// [_i12.PaymentView]
class PaymentViewRoute extends _i13.PageRouteInfo<PaymentViewRouteArgs> {
  PaymentViewRoute({
    _i14.Key? key,
    required _i16.PaymentMethod paymentMethod,
  }) : super(
          PaymentViewRoute.name,
          path: 'payment-view',
          args: PaymentViewRouteArgs(
            key: key,
            paymentMethod: paymentMethod,
          ),
        );

  static const String name = 'PaymentViewRoute';
}

class PaymentViewRouteArgs {
  const PaymentViewRouteArgs({
    this.key,
    required this.paymentMethod,
  });

  final _i14.Key? key;

  final _i16.PaymentMethod paymentMethod;

  @override
  String toString() {
    return 'PaymentViewRouteArgs{key: $key, paymentMethod: $paymentMethod}';
  }
}
