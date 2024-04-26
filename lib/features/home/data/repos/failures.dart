import 'package:dio/dio.dart';

typedef DioError = DioException;
typedef DioErrorType = DioExceptionType;

abstract class Failure {
  final String errMessage;

  const Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioError dioError) {
    String errorMessage = "Unknown error";
    switch (dioError.type) {
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection Timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send Timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive Timeout with ApiServer');

      case DioExceptionType.badCertificate:
        break;
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request to ApiService was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'Connection Error with ApiServer');

      case DioExceptionType.unknown:
        return ServerFailure(errMessage: 'Unknown Error');
      default:
        return ServerFailure(
            errMessage: 'Opps there\'s an error, Please Try Later!');
    }
    return ServerFailure(errMessage: errorMessage);
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['error']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'Your request not found, Please Try Later!');
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: 'Internal Server Error, Please Try Later!');
    } else {
      return ServerFailure(
          errMessage: 'Opps there\'s an error, Please Try Later!');
    }
  }
}
