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
  final bool isWorking;
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
      required this.isWorking,
      required this.sorting});
}
