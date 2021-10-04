import 'package:flutter/material.dart';
import 'package:httpGateway/http_gateway.dart';
import 'package:httpGateway/post_model.dart';
import 'package:httpGateway/response_model.dart';

class DashboardProvider with ChangeNotifier {
  ResponseModel<PostModel> _responseModel;
  bool _isLoading = false;

  DashboardProvider() {
    download();
  }

  bool get isLoading => _isLoading;
  set isLoading(bool status) {
    _isLoading = status;
    notifyListeners();
  }

  PostModel get post => _responseModel.data;

  download() async {
    isLoading = true;
    _responseModel = await HttpGateway.get<PostModel>(
        url: "https://jsonplaceholder.typicode.com/posts/1",
        model: (result) => PostModel.fromJson(result));
    isLoading = false;

    // ResponseModel response = await HttpGateway.get<List<PostModel>>(
    //     url: "https://jsonplaceholder.typicode.com/posts",
    //     model: (result) => PostModel.fromObjectList(result));
  }
}
