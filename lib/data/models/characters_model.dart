class Character {
  late int charId;
  late String charName;
  late String charStatus;
  late String charSpecies;
  late String charGender;
  late Map<String, String> charOrigin;
  // Origin? origin;
  late String charImg;

  Character({
    required this.charId,
    required this.charName,
    required this.charStatus,
    required this.charSpecies,
    required this.charGender,
    required this.charOrigin,
    required this.charImg,
  });

  factory Character.fromJson(Map<dynamic, dynamic> json) {
    return Character(
        charId: json['id'],
        charName: json['name'],
        charStatus: json['status'],
        charSpecies: json['species'],
        charGender: json['gender'],
        charOrigin: Map<String, String>.from(json['origin']),
        charImg: json['image']);
  }
}

// class Origin {
//   String? name;
//   String? url;
//   Origin({this.name, this.url});
//   Origin.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     url = json['url'];
//   }
