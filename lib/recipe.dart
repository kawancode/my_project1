class Recipe {
  String label;
  String imageUrl;

  Recipe(this.label, this.imageUrl);

   static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/images/1.png',
    ),
    Recipe(
      'Tomato Soup',
      'assets/images/2.png',
    ),
    Recipe(
      'Grilled Cheese',
      'assets/images/3.png',
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/images/4.png',
    ),

    Recipe(
      'Taco Salad',
      'assets/images/5.png',
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/images/6.png',
    ),
  ];
}
