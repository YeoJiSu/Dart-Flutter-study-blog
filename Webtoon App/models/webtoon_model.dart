class WebtoonModel {
  final String title, thumb, id;

  // named constructor이다.
  WebtoonModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
