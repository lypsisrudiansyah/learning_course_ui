// ignore_for_file: public_member_api_docs, sort_constructors_first
class CourseModel {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  CourseModel({
    required this.author,
    required this.authorImg,
    required this.title,
    required this.imageUrl,
  });

  static List<CourseModel> generateCourses() {
    return [
      CourseModel(author: "John Bruh", authorImg: 'assets/images/author1.png', title: "Mastering IOT", imageUrl: 'assets/images/img1.jpg'),
      CourseModel(author: "Rudiansyah", authorImg: 'assets/images/author2.png', title: "Let's Build IOT Nowadays ", imageUrl: 'assets/images/img2.jpg'),
      CourseModel(author: "Rudiansyah", authorImg: 'assets/images/author2.png', title: "Be an IT Guy", imageUrl: 'assets/images/img3.jpg'),
    ];
  }
}
