class HomeModel {
  final String id;
  final String name;

  HomeModel({required this.id, required this.name});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(id: json['id'] as String, name: json['name'] as String);
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
