import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:zert_auth_ui/core/exception.dart';
import 'package:zert_auth_ui/core/models/user.dart';
import 'package:zert_auth_ui/features/auth/data/repository/auth.dart';

part 'auth.g.dart';
part 'auth.freezed.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @Default('') String firstname,
    @Default('') String lastname,
    @Default('') String homeAddress,
    @Default('') String phone,
    @Default('') String email,
    @Default(false) bool tosAccepted,
    @Default(false) bool loading,
    @Default(false) bool success,
    String? error,
  }) = _SignInFormState;
}

@riverpod
class SignInFormNotifier extends _$SignInFormNotifier {
  @override
  SignInFormState build() {
    return SignInFormState();
  }

  void updateFirstname(String value) =>
      state = state.copyWith(firstname: value);

  void updateLastname(String value) => state = state.copyWith(lastname: value);

  void updateHomeAddress(String value) =>
      state = state.copyWith(homeAddress: value);

  void updatePhone(String value) => state = state.copyWith(phone: value);

  void updateEmail(String value) => state = state.copyWith(email: value);

  void clearError() => state = state.copyWith(error: null);

  void clearSuccess() => state = state.copyWith(success: false);

  void updateTermsOfService() =>
      state = state.copyWith(tosAccepted: !state.tosAccepted);

  Future<void> signup() async {
    state = state.copyWith(loading: true);
    try {
      await AuthRepository.signup({
        "firstName": state.firstname,
        "lastName": state.lastname,
        "email": state.email,
        "phone": state.phone,
        "homeAddress": state.homeAddress,
      });
      state = state.copyWith(loading: false, success: true);
    } on ZartException catch (e) {
      state = state.copyWith(loading: false, error: e.message);
    } catch (e) {
      state = state.copyWith(loading: false, error: e.toString());
    }
  }
}

@freezed
abstract class OTPFormState with _$OTPFormState {
  const factory OTPFormState({
    @Default("") String otp,
    @Default(false) bool loading,
    @Default(false) bool resending,
    @Default(60) int countdown,
    @Default(false) bool success,
    String? error,
  }) = _OTPFormState;
}

@riverpod
class OTPFormNotifier extends _$OTPFormNotifier {
  Timer? _timer;

  void _startCountdown(int from) {
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.countdown <= 1) {
        timer.cancel();
        state = state.copyWith(countdown: 0);
      } else {
        state = state.copyWith(countdown: state.countdown - 1);
      }
    });
  }

  @override
  OTPFormState build() {
    ref.onDispose(() {
      _timer?.cancel();
    });
    _startCountdown(60);

    return OTPFormState();
  }

  void clearError() => state = state.copyWith(error: null);

  void updateOTP(String value) => state = state.copyWith(otp: value);

  void clearSuccess() => state = state.copyWith(success: false);

  Future<void> verifyOTP() async {
    if (state.loading) return;

    final otp = state.otp;
    if (otp.length != 6 || int.tryParse(otp) == null) {
      return;
    }
    final email = ref.read(signInFormProvider).email;

    state = state.copyWith(loading: true);
    try {
      await AuthRepository.validateOtp(otp, email);
      state = state.copyWith(loading: false, success: true);
    } on ZartException catch (e) {
      state = state.copyWith(loading: false, error: e.message);
    } catch (e) {
      state = state.copyWith(loading: false, error: e.toString());
    }
  }

  Future<void> resendCode() async {
    state = state.copyWith(resending: true);
    try {
      final email = ref.read(signInFormProvider).email;
      await AuthRepository.resendOtp(email);
      state = state.copyWith(resending: false, countdown: 60);
    } on ZartException catch (e) {
      state = state.copyWith(resending: false, error: e.message, countdown: 60);
    } catch (e) {
      state = state.copyWith(resending: false, error: e.toString(), countdown: 60);
    } finally {
      _startCountdown(60);
    }
  }
}


@riverpod
Future<User> user(Ref ref) async {
  final resp = await AuthRepository.getMe();

  return resp;
}
