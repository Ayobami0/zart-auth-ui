import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zert_auth_ui/core/routes.dart';
import 'package:zert_auth_ui/features/auth/providers/auth.dart';
import 'package:zert_auth_ui/features/auth/widgets/button.dart';
import 'package:zert_auth_ui/features/auth/widgets/text_field.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  Future<void> _signup() async {
    if (!_formKey.currentState!.validate()) return;

    await ref.read(signInFormProvider.notifier).signup();
  }

  String? Function(String?)? _getValidatorFunc(String input) {
    return switch (input) {
      'email' => (s) {
        if (s == null || s.isEmpty) return 'Email address is required';
        if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(s)) {
          return 'Enter a valid email address';
        }
        return null;
      },
      'firstname' => (s) {
        if (s == null || s.isEmpty) return 'First name is required';
        return null;
      },
      'lastname' => (s) {
        if (s == null || s.isEmpty) return 'Last name is required';
        return null;
      },
      'phone' => (s) {
        if (s == null || s.isEmpty) return 'Phone number is required';
        if (!RegExp(r'^\+?[0-9]{10}$').hasMatch(s)) {
          return 'Enter a valid phone number';
        }
        return null;
      },
      'address' => (s) {
        if (s == null || s.isEmpty) return 'Home address is required';
        return null;
      },
      _ => null,
    };
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(signInFormProvider, (prev, next) {
      if (next.error != null && next.error != prev?.error) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            showCloseIcon: true,
            behavior: SnackBarBehavior.floating,
            content: Text(next.error!),
            backgroundColor: Colors.red,
          ),
        );
        ref.read(signInFormProvider.notifier).clearError();
      }
      if (next.error == null && prev != null && !prev.success && next.success) {
        ref.read(signInFormProvider.notifier).clearSuccess();
        if (mounted) {
          Navigator.of(context).pushNamed(ZartRoutes.otpRoute);
        }
      }
    });
    final formState = ref.watch(signInFormProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 28,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SvgPicture.asset(
                    'assets/images/zart.svg',
                    width: 40,
                    height: 40,
                  ),
                ),
                Column(
                  spacing: 8,
                  children: [
                    Text(
                      'Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Text('Enter your details'),
                  ],
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    spacing: 12,
                    children: [
                      ZartTextField(
                        validator: _getValidatorFunc('firstname'),
                        hintText: 'e.g John',
                        labelText: 'First name',
                        isRequired: true,
                        onChanged: ref
                            .read(signInFormProvider.notifier)
                            .updateFirstname,
                      ),
                      ZartTextField(
                        validator: _getValidatorFunc('lastname'),
                        hintText: 'e.g Doe',
                        labelText: 'Last name',
                        isRequired: true,
                        onChanged: ref
                            .read(signInFormProvider.notifier)
                            .updateLastname,
                      ),
                      ZartTextField(
                        validator: _getValidatorFunc('phone'),
                        hintText: 'e.g 903243*****',
                        labelText: 'Phone number',
                        isRequired: true,
                        isPhoneNumber: true,
                        maxLength: 10,
                        keyboardType: TextInputType.phone,
                        onChanged: ref
                            .read(signInFormProvider.notifier)
                            .updatePhone,
                      ),
                      ZartTextField(
                        validator: _getValidatorFunc('address'),
                        hintText: 'e.g 104A Badejoke Oniru Street',
                        labelText: 'Home Address',
                        isRequired: true,
                        helperText: 'To personalize your experience with nearby artisans',
                        onChanged: ref
                            .read(signInFormProvider.notifier)
                            .updateHomeAddress,
                      ),
                      ZartTextField(
                        validator: _getValidatorFunc('email'),
                        hintText: 'e.g johndoe@gmail.com',
                        labelText: 'Email Address',
                        helperText: 'An OTP will be sent to your mail',
                        isRequired: true,
                        onChanged: ref
                            .read(signInFormProvider.notifier)
                            .updateEmail,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: formState.tosAccepted,
                            onChanged: (v) => ref
                                .read(signInFormProvider.notifier)
                                .updateTermsOfService(),
                          ),
                          Flexible(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        "I confirm that I have read and accepted Zart's ",
                                  ),
                                  WidgetSpan(
                                    child: GestureDetector(
                                      child: Text(
                                        'Term of service ',
                                        style: TextStyle(
                                          color: Color(0xff0e4536),
                                          decorationColor: Color(0xff0e4536),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextSpan(text: "and "),
                                  WidgetSpan(
                                    child: GestureDetector(
                                      child: Text(
                                        'Privacy Policy',
                                        style: TextStyle(
                                          color: Color(0xff0e4536),
                                          decorationColor: Color(0xff0e4536),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ZartButton(
                  onPressed: _signup,
                  isEnabled: !formState.loading && formState.tosAccepted,
                  isLoading: formState.loading,
                  child: Text('Agree and Continue'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
