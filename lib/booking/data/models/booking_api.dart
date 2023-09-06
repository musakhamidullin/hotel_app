import '../../../core/core.dart';
import '../../../core/data/models/api.dart';
import 'booking.dart';

class BookingApi with DioMixin implements DioApi<Booking> {
  @override
  String url = 'e8868481-743f-4eb2-a0d7-2bc4012275c8';

  @override
  Future<Booking> get() async {
    final request = await dio.get(url);

    if (request.statusCode != 200) throw Exception('error api');

    return Booking.fromJson(request.data);
  }
}
