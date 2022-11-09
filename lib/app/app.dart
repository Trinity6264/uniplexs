import 'package:auto_route/annotations.dart';
import 'package:uniplexs/views/authentication/forgot_password/forgot_password_view.dart';
import 'package:uniplexs/views/authentication/login/login_view.dart';
import 'package:uniplexs/views/authentication/new_password/new_password_view.dart';
import 'package:uniplexs/views/authentication/signup/signup_view.dart';
import 'package:uniplexs/views/authentication/verify_account/verify_account_view.dart';
import 'package:uniplexs/views/dashboard/dashboard_view.dart';
import 'package:uniplexs/views/dashboard/home/home_view.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/checkout/checkout_view.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/buy_tickets/buy_tickets_view.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/movie_comments/all_comments.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/movie_detail.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/refreshment/refreshment_view.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_wrapper.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/payment/payment_view.dart';
import 'package:uniplexs/views/dashboard/profile/profile_view.dart';
import 'package:uniplexs/views/dashboard/tickets/tickets_view.dart';
import 'package:uniplexs/views/onboarding/onboard_view.dart';
import 'package:uniplexs/views/splash/splash_view.dart';

import '../views/dashboard/movie_wrapper/movie/movie_view.dart';

@MaterialAutoRouter(routes: [
  // AutoRoute(path: '/', page: SplashView, initial: true),
  // AutoRoute(path: '/on-board-view', page: OnBoardView),
  // AutoRoute(path: '/login-view', page: LoginView),
  // AutoRoute(path: '/sign-up-view', page: SignUpView),
  // AutoRoute(path: '/verify-account-view', page: VerifyAccountView),
  // AutoRoute(path: '/forgot-password-view', page: ForgotPasswordView),
  // AutoRoute(path: '/new-pass-word-view', page: NewPassWordView),
  AutoRoute(
    path: '/dashboard-view',
    initial: true,
    page: DashboardView,
    children: [
      AutoRoute(path: '', page: HomeView, initial: true),
      AutoRoute(
        path: 'movie',
        page: MovieWrapper,
        children: [
          AutoRoute(path: '', page: MovieView, initial: true),
          AutoRoute(path: 'movie-detail', page: MovieDetail),
          AutoRoute(path: 'all-comments', page: AllComments),
          AutoRoute(path: 'buy-tickets-view', page: BuyTicketsView),
          AutoRoute(path: 'refreshment-view', page: RefreshmentView),
          AutoRoute(path: 'checkout-view', page: CheckoutView),
          AutoRoute(path: 'payment-view', page: PaymentView),
        ],
      ),
      AutoRoute(path: 'ticket', page: TicketView),
      AutoRoute(path: 'profile', page: ProfileView),
    ],
  ),
])
class $AppRouter {}
