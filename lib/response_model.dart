class ResponseModel<T> {
  int statusCode;
  String message;
  // dynamic data;
  T data;

  ResponseModel({this.statusCode, this.message, this.data});

  // ResponseModel.fromJson(dynamic json) {
  //   statusCode = statusCode;
  //   data = data.fromJson(json);
  // }
}
