class Colleges {
  String name;
  String discription;
  String thumbnail;

  Colleges({
    required this.discription,
    required this.name,
    required this.thumbnail,
  });
}

List<Colleges> collegesList = [
  Colleges(
    name: "GHJK Engineering college",
    discription: "Lorem ipsum dolor sit amet consectetur",
    thumbnail: "assets/images/college1.png",
  ),
  Colleges(
    name: "Bachelor of Technology",
    discription: "Lorem ipsum dolor sit amet.",
    thumbnail: "assets/images/college2.png",
  ),
  Colleges(
    name: "GHJK Engineering college",
    discription: "Lorem ipsum dolor sit amet consectetur",
    thumbnail: "assets/images/college1.png",
  ),
  Colleges(
    name: "Bachelor of Technology",
    discription: "Lorem ipsum dolor sit amet.",
    thumbnail: "assets/images/college2.png",
  ),
];
