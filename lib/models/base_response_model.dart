import 'package:base_response_api/models/base_object_model.dart';

class BaseResponse<T> {
  int status;
  String message;
  T data;

  BaseResponse({this.status, this.message, this.data});

  BaseResponse parseJson(json, BaseObject target) {
    return BaseResponse(
      status: json['status'],
      message: json['message'],
      data: target.fromJson(json['data']),
    );
  }
}
