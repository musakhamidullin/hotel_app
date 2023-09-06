import 'package:dio/dio.dart';

mixin DioMixin{
  final dio = Dio(BaseOptions(baseUrl: 'https://run.mocky.io/v3/'));
}

abstract class DioApi<T> {

  late final String url;

  Future<T> get();
}
