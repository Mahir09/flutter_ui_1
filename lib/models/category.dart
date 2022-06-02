class Category {
  String thumbnail;
  String name;
  String discription;
  String dig;

  Category({
    required this.name,
    required this.discription,
    required this.thumbnail,
    required this.dig,
  });
}

List<Category> categoryList = [
  Category(
    name: 'Top Colleges',
    discription:
        'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.',
    thumbnail: 'assets/images/img_rectangle141.png',
    dig: "+126",
  ),
  Category(
    name: 'Top Schools',
    discription:
        'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
    thumbnail: 'assets/images/img_rectangle142.png',
    dig: "+106",
  ),
  Category(
    name: 'Exams',
    discription:
        'Find an end to end information about the exams that are happening in India. Find an end to end information about the exams that are happening in India',
    thumbnail: 'assets/images/img_rectangle143.png',
    dig: "+16",
  ),
];
