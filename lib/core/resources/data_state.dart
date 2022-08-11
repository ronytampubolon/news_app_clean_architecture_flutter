import 'package:dio/dio.dart';

abstract class DataState<T>{
  final T? data;
  final DioError? error;

  const DataState({this.data, this.error});
}
class DataSuccess<T> extends DataState<T>{
  DataSuccess(T data) : super(data:data);
}
class DataError<T> extends DataState<T>{
  DataError(DioError error): super(error: error);
}