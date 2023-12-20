class Character {
  late int charId;
  late String charName;
  late String charStatus;
  late String charSpecies;
  late String charGender;
  // late Map<String, String> charOrigin;
  Origin? origin;
  late String charImg;

  Character.fromJson(Map<String, dynamic> json) {
    charId = json["id"];
    charName = json["name"];
    charStatus = json["status"];
    charSpecies = json["species"];
    charGender = json["gender"];
    // charOrigin = json["origin"];
    origin =
        json['origin'] != null ? new Origin.fromJson(json['origin']) : null;
    charImg = json["image"];
  }
}

class Origin {
  String? name;
  String? url;
  Origin({this.name, this.url});
  Origin.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }
}
