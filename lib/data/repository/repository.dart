import 'package:e_commerce_app/data/models/list/post_list_resp.dart';
import 'package:e_commerce_app/data/models/login/post_login_resp.dart';
import 'package:e_commerce_app/data/models/register/post_register_resp.dart';
import 'package:e_commerce_app/data/models/updateProfile/put_update_profile_resp.dart';

import '../apiClient/api_client.dart';

class Repository {
  var _apiClient = ApiClient();

  Future<PostListResp> createList({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    return await _apiClient.createList(
      headers: headers,
      requestData: requestData,
    );
  }

  Future<PostLoginResp> createLogin({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    return await _apiClient.createLogin(
      headers: headers,
      requestData: requestData,
    );
  }

  Future<PutUpdateProfileResp> updateUpdateProfile({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    return await _apiClient.updateUpdateProfile(
      headers: headers,
      requestData: requestData,
    );
  }

  Future<PostRegisterResp> createRegister({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    return await _apiClient.createRegister(
      headers: headers,
      requestData: requestData,
    );
  }
}
