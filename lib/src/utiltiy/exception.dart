import 'package:dio/dio.dart';

class DataException implements Exception {
  DataException({required this.message});

  DataException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Error Request Cancelled";
        break;
      case DioErrorType.connectTimeout:
        message = "Error Connection Timeout";
        break;
      case DioErrorType.receiveTimeout:
        message = "Error Receive Timeout";
        break;
      case DioErrorType.response:
        message = _handleError(dioError.response!.statusCode!);
        break;
      case DioErrorType.sendTimeout:
        message = "Error Send Timeout";
        break;
      default:
        message = "Error Internet Connection";
        break;
    }
  }

  String message = "";

  String _handleError(int statusCode) {
    switch (statusCode) {
      case 400:
        return "Error Bad Request";
      case 404:
        return "Error Request NotFound";
      case 500:
        return "Error Intenal Server";
      default:
        return "Error Something WentWrong";
    }
  }

  @override
  String toString() => message;
}
