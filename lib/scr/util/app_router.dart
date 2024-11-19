import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:mani_auth_plugin/scr/model/auth_model.dart';
import 'package:mani_auth_plugin/scr/model/auth_path.dart';
import 'package:mani_auth_plugin/scr/ui/auth_page.dart';
import 'package:mani_auth_plugin/scr/ui/create_login_page.dart';
import 'package:mani_auth_plugin/scr/ui/create_new_password_page.dart';
import 'package:mani_auth_plugin/scr/ui/forgot_password_otp_page.dart';
import 'package:mani_auth_plugin/scr/ui/forgot_password_page.dart';
import 'package:mani_auth_plugin/scr/ui/my_id_page.dart';
import 'package:mani_auth_plugin/scr/ui/otp_page.dart';

abstract class PagePath {
  static const String auth = '/auth';
  static const String myId = '/myId';
  static const String forgotPasswordMyId = 'myId';
  static const String otp = 'otp';
  static const String createLogin = 'createLogin';
  static const String forgotPassword = 'forgotPassword';
  static const String forgotPasswordOtp = 'forgotPasswordOtp';
  static const String createNewPassword = 'createNewPassword';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  AppRouter() {
    goRouter = _router();
  }
  late GoRouter goRouter;

  GoRouter _router() => GoRouter(
        debugLogDiagnostics: true,
        navigatorKey: _rootNavigatorKey,
        initialLocation: PagePath.auth,
        routes: _routes,
      );

  final List<RouteBase> _routes = [
    GoRoute(
      path: PagePath.myId,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        transitionDuration: const Duration(milliseconds: 50),
        reverseTransitionDuration: const Duration(milliseconds: 50),
        key: state.pageKey,
        child: MyIdPage(
          accessToken: (state.extra! as AuthModel).accessToken,
          refreshToken: (state.extra! as AuthModel).refreshToken,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      path: PagePath.auth,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        transitionDuration: const Duration(milliseconds: 50),
        reverseTransitionDuration: const Duration(milliseconds: 50),
        key: state.pageKey,
        child: const AuthPage(title: 'some title'),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
      routes: [
        GoRoute(
          path: PagePath.otp,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            transitionDuration: const Duration(milliseconds: 50),
            reverseTransitionDuration: const Duration(milliseconds: 50),
            key: state.pageKey,
            child: OtpPage(info: state.extra! as (String, AuthPath)),
            transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                FadeTransition(opacity: animation, child: child),
          ),
        ),
        GoRoute(
          path: PagePath.forgotPassword,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            transitionDuration: const Duration(milliseconds: 50),
            reverseTransitionDuration: const Duration(milliseconds: 50),
            key: state.pageKey,
            child: const ForgotPasswordPage(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                FadeTransition(opacity: animation, child: child),
          ),
          routes: [
            GoRoute(
              path: PagePath.forgotPasswordOtp,
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                transitionDuration: const Duration(milliseconds: 50),
                reverseTransitionDuration: const Duration(milliseconds: 50),
                key: state.pageKey,
                child: ForgotPasswordOtpPage(phoneNumber: state.extra! as String),
                transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                    FadeTransition(opacity: animation, child: child),
              ),
            ),
            GoRoute(
              path: PagePath.createNewPassword,
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                key: state.pageKey,
                child: const CreateNewPasswordPage(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                    FadeTransition(opacity: animation, child: child),
              ),
            ),
            GoRoute(
              path: PagePath.forgotPasswordMyId,
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                transitionDuration: const Duration(milliseconds: 50),
                reverseTransitionDuration: const Duration(milliseconds: 50),
                key: state.pageKey,
                child: MyIdPage(phoneNumber: state.extra! as String),
                transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                    FadeTransition(opacity: animation, child: child),
              ),
            ),
          ],
        ),
        GoRoute(
          path: PagePath.createLogin,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            transitionDuration: Duration.zero,
            reverseTransitionDuration: const Duration(milliseconds: 50),
            key: state.pageKey,
            child: CreateLoginPage(phoneNumber: state.extra! as String),
            transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                FadeTransition(opacity: animation, child: child),
          ),
        ),
      ],
    ),
  ];
}
