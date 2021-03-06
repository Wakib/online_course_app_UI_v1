class Category {
  final String name;
  final String numOfCourses;
  final String image;

  Category(this.name, this.numOfCourses, this.image);
}

//Initializing and converting the 'List of Maps' to List of Category object
List<Category> categories = categoriesData
    .map((item) => Category(item['name'], item['courses'], item['image']))
    .toList();

// List of Maps; each map contains course details
var categoriesData = [
  {
    'name': 'Marketing',
    'courses': '17',
    'image': 'assets/images/marketing.png'
  },
  {
    'name': 'UX Design',
    'courses': '25',
    'image': 'assets/images/ux_design.png'
  },
  {
    'name': 'Photography',
    'courses': '13',
    'image': 'assets/images/photography.png'
  },
  {'name': 'Business', 'courses': '17', 'image': 'assets/images/business.png'},
  {'name': 'Music', 'courses': '10', 'image': 'assets/images/music.png'},
  {'name': 'Gardening', 'courses': '5', 'image': 'assets/images/gardening.png'},
];
