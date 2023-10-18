class Pet {
  final String imageName;
  final String name;
  final int birthYear;
  final String category;

  const Pet({
    required this.imageName,
    required this.name,
    required this.birthYear,
    required this.category,
  });

  @override
  String toString() {
    return 'Pet{imageName: $imageName, name: $name, birthYear: $birthYear, category: $category}';
  }
}
