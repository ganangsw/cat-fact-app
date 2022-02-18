class CatFact {
  String? fact;
  int? length;

  CatFact({this.fact, this.length});

  CatFact.fromJson(dynamic json) {
    fact = json['fact'];
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fact'] = fact;
    map['length'] = length;
    return map;
  }
}
