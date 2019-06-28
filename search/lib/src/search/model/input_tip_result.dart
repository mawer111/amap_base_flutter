class InputTipResult {
  String adcode;
  String address;
  String district;
  String name;
  String poiID;
  Point point;
  String typeCode;

  InputTipResult(
      {this.adcode,
        this.address,
        this.district,
        this.name,
        this.poiID,
        this.point,
        this.typeCode});

  InputTipResult.fromJson(Map<String, dynamic> json) {
    adcode = json['adcode'];
    address = json['address'];
    district = json['district'];
    name = json['name'];
    poiID = json['poiID'];
    point = json['point'] != null ? new Point.fromJson(json['point']) : null;
    typeCode = json['typeCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adcode'] = this.adcode;
    data['address'] = this.address;
    data['district'] = this.district;
    data['name'] = this.name;
    data['poiID'] = this.poiID;
    if (this.point != null) {
      data['point'] = this.point.toJson();
    }
    data['typeCode'] = this.typeCode;
    return data;
  }
}

class Point {
  double latitude;
  double longitude;

  Point({this.latitude, this.longitude});

  Point.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}