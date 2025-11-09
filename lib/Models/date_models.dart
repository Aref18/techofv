class HashTags {
  String Title;
  HashTags({required this.Title});
}

class BlogModel {
  int id;
  String imageUrl;
  String title;
  String writer;
  String WriterimageUrl;
  String date;
  String content;
  String view;

  BlogModel({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.writer,
    required this.WriterimageUrl,
    required this.date,
    required this.content,
    required this.view,
  });
}

class PodCast {
  int id;
  String imageUrl;
  String name;
  PodCast({required this.id, required this.imageUrl, required this.name});
}

class HomePageP {
  String Image;
  String Writer;
  String Data;
  String Title;
  String View;

  HomePageP({
    required this.Image,
    required this.Writer,
    required this.Data,
    required this.Title,
    required this.View,
  });
}
