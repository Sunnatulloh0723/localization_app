class Category {
  final String pet;
  final String description;

  Category(this.pet, {
    required this.description,
  });

  @override
  String toString() {
    return 'Category{pet: $pet, description: $description}';
  }
}
