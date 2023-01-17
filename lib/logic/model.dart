class GetDataFromApi {
  final bool status;
  final String message;
  final GetDataUser data;

  GetDataFromApi({
    required this.status,
    required this.message,
    required this.data,
  });
  factory GetDataFromApi.fromJson(jsonData) {
    return GetDataFromApi(
      status: jsonData['status'],
      message: jsonData['message'],
      data: jsonData['data'],
    );
  }
}

class GetDataUser {
  final String token;
  GetDataUser({required this.token});
  factory GetDataUser.fromJson(jsonData) {
    return GetDataUser(token: jsonData['access_token']);
  }
}
