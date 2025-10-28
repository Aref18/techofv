class HashTags {
  String Title;

  HashTags({required this.Title});
}

class BlogModel {
  int id;
  String imageUrl;
  String title;
  String writer;
  String writerimageUrl;
  String date;
  String content;
  String view;

  BlogModel({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.writer,
    required this.writerimageUrl,
    required this.date,
    required this.content,
    required this.view,
  });
}
