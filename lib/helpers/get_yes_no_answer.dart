import 'package:dio/dio.dart';
import 'package:toxica_2/domain/entities/message.dart';
import 'package:toxica_2/infrastructure/yes_no_answer.dart';

class GetYesNoAnswer {
  final _dio = Dio(BaseOptions(baseUrl: 'https://yesno.wtf'));

  Future<Message> getAnswer() async {
    final response = await _dio.get('/api');
    final YesNoAnswer model = YesNoAnswer.fromJson(response.data);
    print(response.data);
    return Message(
      text: model.answer == 'no' ? 'No' : 'Si',
      imageUrl: model.image,
      fromWho: FromWho.hers,
    );
  }
}
