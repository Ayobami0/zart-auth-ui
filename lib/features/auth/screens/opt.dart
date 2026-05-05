import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zert_auth_ui/core/routes.dart';
import 'package:zert_auth_ui/features/auth/providers/auth.dart';
import 'package:zert_auth_ui/features/auth/widgets/button.dart';
import 'package:zert_auth_ui/features/auth/widgets/text_field.dart';

class OtpScreen extends ConsumerWidget {
  OtpScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  void _handleSubmit(BuildContext context, WidgetRef ref) {
    if (_formKey.currentState?.validate() ?? false) {
      ref.read(oTPFormProvider.notifier).verifyOTP();
    }
  }

  String _parseCountdown(int countdown) {
    return '${countdown ~/ 60}:${(countdown % 60).toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(oTPFormProvider, (prev, next) {
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
        ref.read(oTPFormProvider.notifier).clearError();
      }
      if (next.error == null && prev != null && !prev.success && next.success) {
        ref.read(oTPFormProvider.notifier).clearSuccess();
        if (context.mounted) {
          Navigator.of(context).pushReplacementNamed(ZartRoutes.dashboardRoute);
        }
      }
    });
    final formState = ref.watch(oTPFormProvider);

    final countdown = formState.countdown;
    final loading = formState.loading;
    final resending = formState.resending;

    final helperText = countdown == 0
        ? 'Resend Code'
        : 'Resend Code ${_parseCountdown(countdown)}';

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Column(
              spacing: 16,
              children: [
                Text(
                  'Enter OTP',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                Text('Enter the OTP sent to your mail/phone'),
              ],
            ),
            SizedBox(height: 30),
            Form(
              key: _formKey,
              child: ZartTextField(
                hintText: 'e.g 123456',
                keyboardType: TextInputType.phone,
                maxLength: 6,
                helperText: helperText,
                onHelperTap: countdown == 0 && !resending
                    ? ref.read(oTPFormProvider.notifier).resendCode
                    : null,
                labelText: 'OTP',
                isRequired: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'OTP is required';
                  }
                  if (value.length != 6 || int.tryParse(value) == null) {
                    return 'Invalid OTP';
                  }
                  return null;
                },
                onChanged: ref.read(oTPFormProvider.notifier).updateOTP,
              ),
            ),
            Spacer(),
            ZartButton(
              isEnabled: !loading,
              isLoading: loading,
              onPressed: () => _handleSubmit(context, ref),
              child: Text('Enter'),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
