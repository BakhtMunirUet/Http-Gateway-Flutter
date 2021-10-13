class ResponseModel<T> {
  int statusCode;
  String message;
  T data;

  ResponseModel({this.statusCode, this.message, this.data});
}
