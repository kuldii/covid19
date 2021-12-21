class Daily {
  late String totalConfirmed;
  late String mainlandChina;
  late String otherLocations;
  late String deltaConfirmed;
  late String totalRecovered;
  SubDaily? confirmed;
  SubDaily? deltaConfirmedDetail;
  SubDaily? deaths;
  SubDaily? recovered;
  late String active;
  late String deltaRecovered;
  late String incidentRate;
  late String peopleTested;
  late String reportDate;

  Daily({
    this.totalConfirmed = "",
    this.mainlandChina = "",
    this.otherLocations = "",
    this.deltaConfirmed = "",
    this.totalRecovered = "",
    this.confirmed,
    this.deltaConfirmedDetail,
    this.deaths,
    this.recovered,
    this.active = "",
    this.deltaRecovered = "",
    this.incidentRate = "",
    this.peopleTested = "",
    this.reportDate = "",
  });

  Daily.fromJson(Map<String, dynamic> json) {
    totalConfirmed = json['totalConfirmed'] == null ? "" : json['totalConfirmed'].toString();
    mainlandChina = json['mainlandChina'] == null ? "" : json['mainlandChina'].toString();
    otherLocations = json['otherLocations'] == null ? "" : json['otherLocations'].toString();
    deltaConfirmed = json['deltaConfirmed'] == null ? "" : json['deltaConfirmed'].toString();
    totalRecovered = json['totalRecovered'] == null ? "" : json['totalRecovered'].toString();
    confirmed = json['confirmed'] != null ? SubDaily?.fromJson(json['confirmed']) : null;
    deltaConfirmedDetail = json['deltaConfirmedDetail'] != null ? SubDaily?.fromJson(json['deltaConfirmedDetail']) : null;
    deaths = json['deaths'] != null ? SubDaily?.fromJson(json['deaths']) : null;
    recovered = json['recovered'] != null ? SubDaily?.fromJson(json['recovered']) : null;
    active = json['active'] == null ? "" : json['active'].toString();
    deltaRecovered = json['deltaRecovered'] == null ? "" : json['deltaRecovered'].toString();
    incidentRate = json['incidentRate'] == null ? "" : json['incidentRate'].toString();
    peopleTested = json['peopleTested'] == null ? "" : json['peopleTested'].toString();
    reportDate = json['reportDate'] == null ? "" : json['reportDate'].toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['totalConfirmed'] = totalConfirmed;
    data['mainlandChina'] = mainlandChina;
    data['otherLocations'] = otherLocations;
    data['deltaConfirmed'] = deltaConfirmed;
    data['totalRecovered'] = totalRecovered;
    if (confirmed != null) {
      data['confirmed'] = confirmed!.toJson();
    }
    if (deltaConfirmedDetail != null) {
      data['deltaConfirmedDetail'] = deltaConfirmedDetail!.toJson();
    }
    if (deaths != null) {
      data['deaths'] = deaths!.toJson();
    }
    if (recovered != null) {
      data['recovered'] = recovered!.toJson();
    }
    data['active'] = active;
    data['deltaRecovered'] = deltaRecovered;
    data['incidentRate'] = incidentRate;
    data['peopleTested'] = peopleTested;
    data['reportDate'] = reportDate;
    return data;
  }

  static List<Daily>? fromListJson(List? dataList) {
    if (dataList?.length == 0 || dataList == null) return null;

    return dataList.map((e) => Daily.fromJson(e)).toList();
  }
}

class SubDaily {
  late String total;
  late String china;
  late String outsideChina;

  SubDaily({this.total = "", this.china = "", this.outsideChina = ""});

  SubDaily.fromJson(Map<String, dynamic> json) {
    total = json['total'] != null ? json['total'].toString() : "";
    china = json['china'] != null ? json['china'].toString() : "";
    outsideChina = json['outsideChina'] != null ? json['outsideChina'].toString() : "";
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['total'] = total;
    data['china'] = china;
    data['outsideChina'] = outsideChina;
    return data;
  }
}
