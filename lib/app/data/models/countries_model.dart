class Countries {
  String? name;
  String? iso2;
  String? iso3;

  Countries({this.name, this.iso2, this.iso3});

  Countries.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    iso2 = json['iso2'];
    iso3 = json['iso3'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['iso2'] = iso2;
    data['iso3'] = iso3;
    return data;
  }
}
