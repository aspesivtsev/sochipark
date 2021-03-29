class Attraction {
  final String id;
  final String title;
  final String imageUrl;
  final String shortDescr;
  final String description;
  final List<String> types;
  final String workTime;
  final int age;
  final int height;
  final String location;
  final String withAdults;
  final bool isPurchasedSeparately;
  final String specs;
  final bool isActive;
  final int sorting;

  const Attraction(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.shortDescr,
      required this.description,
      required this.types,
      required this.workTime,
      required this.age,
      required this.height,
      required this.location,
      required this.withAdults,
      required this.isPurchasedSeparately,
      required this.specs,
      required this.isActive,
      required this.sorting});
}

/*final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;

  final bool isVegetarian;*/
