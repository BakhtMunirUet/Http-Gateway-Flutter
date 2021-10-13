class ResponseModel<T> {
  int statusCode;
  String message;
  // dynamic data;
  T data;

  ResponseModel({this.statusCode, this.message, this.data});
}
