class CategoryModel {
  final String vector;
  bool isselected;

  CategoryModel({required this.vector, required this.isselected});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];
    categories.add(
        CategoryModel(vector: 'assets/vectors/dentist.svg', isselected: true));
    categories.add(
        CategoryModel(vector: 'assets/vectors/heart.svg', isselected: false));
    categories.add(
        CategoryModel(vector: 'assets/vectors/pil.svg', isselected: false));
    categories.add(CategoryModel(
        vector: 'assets/vectors/pregnant.svg', isselected: false));
    return categories;
  }
}
