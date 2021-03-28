class Attraction {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final List<String> types;
  final String workTime;
  final int age;
  final String withAdults;
  final bool isPurchasedSeparately;
  final bool isActive;

  const Attraction({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.types,
    required this.workTime,
    required this.age,
    required this.withAdults,
    required this.isPurchasedSeparately,
    required this.isActive,
  });
}

/*final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;

  final bool isVegetarian;*/
