/// legacy_id : "AMERICANCHAMPION"
/// model : null
/// type : "Tug"
/// roles : ["Support Ship","Barge Tug"]
/// imo : 7434016
/// mmsi : 367020820
/// abs : 571252
/// class : 7604342
/// mass_kg : 266712
/// mass_lbs : 588000
/// year_built : 1976
/// home_port : "Port of Los Angeles"
/// status : ""
/// speed_kn : null
/// course_deg : null
/// latitude : null
/// longitude : null
/// last_ais_update : null
/// link : "https://www.marinetraffic.com/en/ais/details/ships/shipid:434663/mmsi:367020820/imo:7434016/vessel:AMERICAN_CHAMPION"
/// image : "https://i.imgur.com/woCxpkj.jpg"
/// launches : ["5eb87cdeffd86e000604b330","5eb87cdfffd86e000604b331"]
/// name : "American Champion"
/// active : false
/// id : "5ea6ed2d080df4000697c901"

class ShipsApi {
  String _legacyId;
  dynamic _model;
  String _type;
  List<String> _roles;
  int _imo;
  int _mmsi;
  int _abs;
  int _massKg;
  int _massLbs;
  int _yearBuilt;
  String _homePort;
  String _status;
  dynamic _speedKn;
  dynamic _courseDeg;
  dynamic _latitude;
  dynamic _longitude;
  dynamic _lastAisUpdate;
  String _link;
  String _image;
  List<String> _launches;
  String _name;
  bool _active;
  String _id;

  String get legacyId => _legacyId;
  dynamic get model => _model;
  String get type => _type;
  List<String> get roles => _roles;
  int get imo => _imo;
  int get mmsi => _mmsi;
  int get abs => _abs;
  int get massKg => _massKg;
  int get massLbs => _massLbs;
  int get yearBuilt => _yearBuilt;
  String get homePort => _homePort;
  String get status => _status;
  dynamic get speedKn => _speedKn;
  dynamic get courseDeg => _courseDeg;
  dynamic get latitude => _latitude;
  dynamic get longitude => _longitude;
  dynamic get lastAisUpdate => _lastAisUpdate;
  String get link => _link;
  String get image => _image;
  List<String> get launches => _launches;
  String get name => _name;
  bool get active => _active;
  String get id => _id;

  ShipsApi({
      String legacyId, 
      dynamic model, 
      String type, 
      List<String> roles, 
      int imo, 
      int mmsi, 
      int abs, 
      int massKg,
      int massLbs, 
      int yearBuilt, 
      String homePort, 
      String status, 
      dynamic speedKn, 
      dynamic courseDeg, 
      dynamic latitude, 
      dynamic longitude, 
      dynamic lastAisUpdate, 
      String link, 
      String image, 
      List<String> launches, 
      String name, 
      bool active, 
      String id}){
    _legacyId = legacyId;
    _model = model;
    _type = type;
    _roles = roles;
    _imo = imo;
    _mmsi = mmsi;
    _abs = abs;
    _massKg = massKg;
    _massLbs = massLbs;
    _yearBuilt = yearBuilt;
    _homePort = homePort;
    _status = status;
    _speedKn = speedKn;
    _courseDeg = courseDeg;
    _latitude = latitude;
    _longitude = longitude;
    _lastAisUpdate = lastAisUpdate;
    _link = link;
    _image = image;
    _launches = launches;
    _name = name;
    _active = active;
    _id = id;
}

  ShipsApi.fromJson(dynamic json) {
    _legacyId = json["legacy_id"];
    _model = json["model"];
    _type = json["type"];
    _roles = json["roles"] != null ? json["roles"].cast<String>() : [];
    _imo = json["imo"];
    _mmsi = json["mmsi"];
    _abs = json["abs"];
    _massKg = json["mass_kg"];
    _massLbs = json["mass_lbs"];
    _yearBuilt = json["year_built"];
    _homePort = json["home_port"];
    _status = json["status"];
    _speedKn = json["speed_kn"];
    _courseDeg = json["course_deg"];
    _latitude = json["latitude"];
    _longitude = json["longitude"];
    _lastAisUpdate = json["last_ais_update"];
    _link = json["link"];
    _image = json["image"];
    _launches = json["launches"] != null ? json["launches"].cast<String>() : [];
    _name = json["name"];
    _active = json["active"];
    _id = json["id"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["legacy_id"] = _legacyId;
    map["model"] = _model;
    map["type"] = _type;
    map["roles"] = _roles;
    map["imo"] = _imo;
    map["mmsi"] = _mmsi;
    map["abs"] = _abs;
    map["mass_kg"] = _massKg;
    map["mass_lbs"] = _massLbs;
    map["year_built"] = _yearBuilt;
    map["home_port"] = _homePort;
    map["status"] = _status;
    map["speed_kn"] = _speedKn;
    map["course_deg"] = _courseDeg;
    map["latitude"] = _latitude;
    map["longitude"] = _longitude;
    map["last_ais_update"] = _lastAisUpdate;
    map["link"] = _link;
    map["image"] = _image;
    map["launches"] = _launches;
    map["name"] = _name;
    map["active"] = _active;
    map["id"] = _id;
    return map;
  }

}