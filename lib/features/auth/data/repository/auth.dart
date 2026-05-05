import 'package:dio/dio.dart';
import 'package:zert_auth_ui/core/api/base.dart';
import 'package:zert_auth_ui/core/exception.dart';
import 'package:zert_auth_ui/core/models/user.dart';
import 'package:zert_auth_ui/core/store.dart';

class AuthRepository {
  static final _network = API.client;

  static Future<void> signup(Map<String, dynamic> data) async {
    final resp = await _network.post('/v1/auth/signup', data: data);

    if (resp.statusCode != 201) {
      final errorData = resp.data;
      final msg = errorData['error']['message'];

      throw ZartException(msg);
    }
  }

  static Future validateOtp(String otp, String email) async {
    final resp = await _network.post(
      '/v1/auth/signup/verify-otp',
      data: {'otp': otp, 'email': email, 'context': 'signup'},
    );

    if (resp.statusCode != 200) {
      final errorData = resp.data;
      final msg = errorData['error']['message'];

      throw ZartException(msg);
    }

    final data = resp.data['data']['accessToken'];
    ZartStore.setToken(data);
  }

  static Future<void> resendOtp(String email) async {
    final resp = await _network.post(
      '/v1/auth/signup/resend-otp',
      data: {'email': email},
    );

    if (resp.statusCode != 200) {
      final errorData = resp.data;
      final msg = errorData['error']['message'];

      throw ZartException(msg);
    }
  }

  static Future<User> getMe() async {
    final token = ZartStore.getToken();
    if (token == null) throw ZartException('No token found. Sign up first :)');

    final resp = await _network.get(
      '/v1/auth/me',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    if (resp.statusCode != 200) {
      final errorData = resp.data;
      final msg = errorData['error']['message'];

      throw ZartException(msg);
    }

    return User.fromJson(resp.data['data']);
  }
}
