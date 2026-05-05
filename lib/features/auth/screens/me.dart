import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zert_auth_ui/core/routes.dart';
import 'package:zert_auth_ui/core/store.dart';
import 'package:zert_auth_ui/features/auth/providers/auth.dart';
import 'package:zert_auth_ui/features/auth/widgets/user_card.dart';

class MeScreen extends ConsumerWidget {
  const MeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: user.when(
                    data: (user) => ZartUserCard(user),
                    loading: () => CircularProgressIndicator(),
                    error: (error, _) => Text(error.toString()),
                  ),
                ),
              ),
              TextButton(
                onPressed: user.isLoading
                    ? null
                    : () {
                        ZartStore.setToken('');
                        Navigator.of(
                          context,
                        ).pushReplacementNamed(ZartRoutes.signUpRoute);
                      },
                child: Text(
                  'Log out',
                  style: TextStyle(color: Colors.red[700]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
