/*
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
} */

class Attraction {
  int? id;
  List<String>? attrTypes;
  String? location;
  String? imageUrl;
  String? title;
  String? shortDescription;
  String? description;
  String? workTime;
  int? age;
  int? height;
  String? withAdults;
  bool? isPurchasedSeparately;
  String? specs;
  bool? isActive;
  bool? isWorking;
  int? sorting;
  int? waitTime;
  bool? isFavorite;
  String? created;
  String? modified;

  Attraction(
      {this.id,
      this.attrTypes,
      this.location,
      this.imageUrl,
      this.title,
      this.shortDescription,
      this.description,
      this.workTime,
      this.age,
      this.height,
      this.withAdults,
      this.isPurchasedSeparately,
      this.specs,
      this.isActive,
      this.isWorking,
      this.sorting,
      this.waitTime,
      this.isFavorite,
      this.created,
      this.modified});

  Attraction.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attrTypes = json['attr_types'].cast<String>();
    location = json['location'];
    imageUrl = json['image_url'];
    title = json['title'];
    shortDescription = json['short_description'];
    description = json['description'];
    workTime = json['work_time'];
    age = json['age'];
    height = json['height'];
    withAdults = json['with_adults'];
    isPurchasedSeparately = json['is_purchased_separately'];
    specs = json['specs'];
    isActive = json['is_active'];
    isWorking = json['is_working'];
    sorting = json['sorting'];
    waitTime = json['wait_time'];
    isFavorite = json['is_favorite'];
    created = json['created'];
    modified = json['modified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['attr_types'] = attrTypes;
    data['location'] = location;
    data['image_url'] = imageUrl;
    data['title'] = title;
    data['short_description'] = shortDescription;
    data['description'] = description;
    data['work_time'] = workTime;
    data['age'] = age;
    data['height'] = height;
    data['with_adults'] = withAdults;
    data['is_purchased_separately'] = isPurchasedSeparately;
    data['specs'] = specs;
    data['is_active'] = isActive;
    data['is_working'] = isWorking;
    data['sorting'] = sorting;
    data['wait_time'] = waitTime;
    data['is_favorite'] = isFavorite;
    data['created'] = created;
    data['modified'] = modified;
    return data;
  }
}
