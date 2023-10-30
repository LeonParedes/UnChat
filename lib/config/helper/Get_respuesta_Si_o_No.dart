import 'package:dio/dio.dart';
import '../../Model/dto/message.dart';
import '../../infrastructure/entities/siono.dart';

// https://quicktype.io/
class GetYesNoAnswer {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final resultSet = await _dio.get('http://yesno.wtf/api');
    final entidadsiono = EntidadSiONo.fromJsonMap(resultSet.data);
    return Message(
        text: entidadsiono.answer == 'yes' ? 'Si mi amor' : 'No querido',
        imageUrl: entidadsiono.image,
        fromWho: FromWho.hers);
  }
}
