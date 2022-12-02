import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project1/constants/endpoints.dart';
import 'package:project1/model/get_model.dart';

class Service {
  static final Dio dio = Dio();
  static Future<UserResponse?> getData(String token) async {
    try {
      dio.options.headers["authtoken"] = token;
      final Response response = await dio.get(Endpoints.getUrl);

      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        return UserResponse.fromJson(response.data);
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: '400 status code',
        toastLength: Toast.LENGTH_LONG,
      );
    }
    return null;
  }

  static Future<AddResponse?> addUser(
    String token,
    String email,
    int role,
  ) async {
    try {
      Map<String, dynamic> data = {"email": email, "role": role};
      dio.options.headers["authtoken"] = token;
      log('1');
      final Response response = await dio.post(Endpoints.inviteUrl, data: data);
      log('2');
      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        log('3');
        return AddResponse.fromJson(response.data);
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: '400 status code',
        toastLength: Toast.LENGTH_LONG,
      );
    }
    return null;
  }
}
