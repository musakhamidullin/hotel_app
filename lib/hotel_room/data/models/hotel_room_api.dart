import '../../../core/data/models/api.dart';
import 'hotel_rooms.dart';

class HoteRoomApi with DioMixin implements DioApi<HoteRoom> {
  @override
  String url = 'f9a38183-6f95-43aa-853a-9c83cbb05ecd';

  @override
  Future<HoteRoom> get() async {
    final request = await dio.get(url);

    if (request.statusCode != 200) throw Exception('error api');

    return HoteRoom.fromJson(request.data);
  }
}
