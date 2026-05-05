import 'package:flutter/material.dart';
import 'package:zert_auth_ui/features/auth/screens/me.dart';
import 'package:zert_auth_ui/features/auth/screens/opt.dart';
import 'package:zert_auth_ui/features/auth/screens/sign_in.dart';

class ZartRoutes {
  static const signUpRoute = '/';
  static const otpRoute = '/otp';
  static const dashboardRoute = '/dashboard';

  static final routes = {
    signUpRoute: (BuildContext context) => SignUpScreen(),
    otpRoute: (BuildContext context) => OtpScreen(),
    dashboardRoute: (BuildContext context) => MeScreen(),
  };
}
