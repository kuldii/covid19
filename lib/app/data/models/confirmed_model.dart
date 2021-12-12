class Confirmed {
  late String provinceState;
  late String countryRegion;
  late String lastUpdate;
  late String lat;
  late String long;
  late String confirmed;
  late String deaths;
  late String recovered;
  late String active;
  late String admin2;
  late String fips;
  late String combinedKey;
  late String incidentRate;
  late String peopleTested;
  late String peopleHospitalized;
  late String uid;
  late String iso3;
  late String cases28Days;
  late String deaths28Days;
  late String iso2;

  Confirmed({
    this.provinceState = "",
    this.countryRegion = "",
    this.lastUpdate = "",
    this.lat = "",
    this.long = "",
    this.confirmed = "",
    this.deaths = "",
    this.recovered = "",
    this.active = "",
    this.admin2 = "",
    this.fips = "",
    this.combinedKey = "",
    this.incidentRate = "",
    this.peopleTested = "",
    this.peopleHospitalized = "",
    this.uid = "",
    this.iso3 = "",
    this.cases28Days = "",
    this.deaths28Days = "",
    this.iso2 = "",
  });

  Confirmed.fromJson(Map<String, dynamic> json) {
    provinceState = json['provinceState'] == null ? "" : json['provinceState'].toString();
    countryRegion = json['countryRegion'] == null ? "" : json['countryRegion'].toString();
    lastUpdate = json['lastUpdate'] == null ? "" : json['lastUpdate'].toString();
    lat = json['lat'] == null ? "" : json['lat'].toString();
    long = json['long'] == null ? "" : json['long'].toString();
    confirmed = json['confirmed'] == null ? "" : json['confirmed'].toString();
    deaths = json['deaths'] == null ? "" : json['deaths'].toString();
    recovered = json['recovered'] == null ? "" : json['recovered'].toString();
    active = json['active'] == null ? "" : json['active'].toString();
    admin2 = json['admin2'] == null ? "" : json['admin2'].toString();
    fips = json['fips'] == null ? "" : json['fips'].toString();
    combinedKey = json['combinedKey'] == null ? "" : json['combinedKey'].toString();
    incidentRate = json['incidentRate'] == null ? "" : json['incidentRate'].toString();
    peopleTested = json['peopleTested'] == null ? "" : json['peopleTested'].toString();
    peopleHospitalized = json['peopleHospitalized'] == null ? "" : json['peopleHospitalized'].toString();
    uid = json['uid'] == null ? "" : json['uid'].toString();
    iso3 = json['iso3'] == null ? "" : json['iso3'].toString();
    cases28Days = json['cases28Days'] == null ? "" : json['cases28Days'].toString();
    deaths28Days = json['deaths28Days'] == null ? "" : json['deaths28Days'].toString();
    iso2 = json['iso2'] == null ? "" : json['iso2'].toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['provinceState'] = provinceState;
    data['countryRegion'] = countryRegion;
    data['lastUpdate'] = lastUpdate;
    data['lat'] = lat;
    data['long'] = long;
    data['confirmed'] = confirmed;
    data['deaths'] = deaths;
    data['recovered'] = recovered;
    data['active'] = active;
    data['admin2'] = admin2;
    data['fips'] = fips;
    data['combinedKey'] = combinedKey;
    data['incidentRate'] = incidentRate;
    data['peopleTested'] = peopleTested;
    data['peopleHospitalized'] = peopleHospitalized;
    data['uid'] = uid;
    data['iso3'] = iso3;
    data['cases28Days'] = cases28Days;
    data['deaths28Days'] = deaths28Days;
    data['iso2'] = iso2;
    return data;
  }

  static List<Confirmed>? fromListJson(List? dataList) {
    if (dataList?.length == 0 || dataList == null) return null;
    return dataList.map((e) => Confirmed.fromJson(e)).toList();
  }
}
