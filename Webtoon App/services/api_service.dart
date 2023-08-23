import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  // pub.dev에서 Dart나 Flutter 패키지 찾아볼 수 있다.
  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url); // Future 로 리턴되는 것을 await 사용
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw Error();
  }
}
