import 'package:dio/dio.dart';

class ApiConstants {
  static const String baseUrl = 'https://qr-infos.vercel.app/';
  static const String register = 'v1/auth/register';
  static const String login = 'v1/auth/login';
  static const String verifyUser = 'v1/auth/verify-user';
  static const String sendCode = 'v1/auth/send-verification';
  static const String getQr = 'v1/info/qr';
  static const String getMe = 'v1/users/me';


  static final dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 15),
  ));
}
