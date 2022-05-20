class ImageProject {
  final int? id;
  final String? image;

  ImageProject({this.id, this.image});

  List<ImageProject> projects = [
    ImageProject(
      id: 1, 
      image: 'assets/images/project/project1.png'),
    ImageProject(
      id: 2,
      image: 'assets/images/project/project2.png'),
    ImageProject(
      id: 3,
      image: 'assets/images/project/project3.png'),
    ImageProject(
      id: 4,
      image: 'assets/images/project/project4.png'),
  ];
}