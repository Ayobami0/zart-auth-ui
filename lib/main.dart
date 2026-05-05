import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zert_auth_ui/core/routes.dart';
import 'package:zert_auth_ui/core/store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ZartStore.init();
  runApp(ProviderScope(child: ZartAuth()));
}

class ZartAuth extends StatelessWidget {
  const ZartAuth({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ZartRoutes.dashboardRoute,
      routes: ZartRoutes.routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          onSurface: Color(0xff272929),
          surface: Colors.white,
          seedColor: Color(0xff0e4536),
        ),
      ),
    );
  }
}
