import 'package:hotel_app/api/api_provider.dart';

class UserLogin {
  Future<Map> login({
    required dynamic body,
  }) {
    Api apiProvider = Api();
    return apiProvider.postData(
      endpoint: '/login',
      body: body,
    );
  }
}
