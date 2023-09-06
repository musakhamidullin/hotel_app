// ignore: implementation_imports

import '../../../core/data/models/api.dart';
import 'hotel.dart';

class HotelApi with DioMixin implements DioApi<Hotel> {
  @override
  String url = '35e0d18e-2521-4f1b-a575-f0fe366f66e3';

  @override
  Future<Hotel> get() async {
    final request = await dio.get(url);

    if (request.statusCode != 200) throw Exception('error api');

    return Hotel.fromJson(request.data);
  }
}
