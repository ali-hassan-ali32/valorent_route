class MapModel {
  MapModel({
      this.status, 
      this.data,});

  MapModel.fromJson(dynamic json) {
    status = json['status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(MapData.fromJson(v));
      });
    }
  }
  num? status;
  List<MapData>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class MapData {
  MapData({
      this.uuid, 
      this.displayName, 
      this.narrativeDescription, 
      this.tacticalDescription, 
      this.coordinates, 
      this.displayIcon, 
      this.listViewIcon, 
      this.listViewIconTall, 
      this.splash, 
      this.stylizedBackgroundImage, 
      this.premierBackgroundImage, 
      this.assetPath, 
      this.mapUrl, 
      this.xMultiplier, 
      this.yMultiplier, 
      this.xScalarToAdd, 
      this.yScalarToAdd, 
      this.callouts,});

  MapData.fromJson(dynamic json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    narrativeDescription = json['narrativeDescription'];
    tacticalDescription = json['tacticalDescription'];
    coordinates = json['coordinates'];
    displayIcon = json['displayIcon'];
    listViewIcon = json['listViewIcon'];
    listViewIconTall = json['listViewIconTall'];
    splash = json['splash'];
    stylizedBackgroundImage = json['stylizedBackgroundImage'];
    premierBackgroundImage = json['premierBackgroundImage'];
    assetPath = json['assetPath'];
    mapUrl = json['mapUrl'];
    xMultiplier = json['xMultiplier'];
    yMultiplier = json['yMultiplier'];
    xScalarToAdd = json['xScalarToAdd'];
    yScalarToAdd = json['yScalarToAdd'];
    if (json['callouts'] != null) {
      callouts = [];
      json['callouts'].forEach((v) {
        callouts?.add(Callouts.fromJson(v));
      });
    }
  }
  String? uuid;
  String? displayName;
  dynamic narrativeDescription;
  String? tacticalDescription;
  String? coordinates;
  String? displayIcon;
  String? listViewIcon;
  String? listViewIconTall;
  String? splash;
  String? stylizedBackgroundImage;
  String? premierBackgroundImage;
  String? assetPath;
  String? mapUrl;
  num? xMultiplier;
  num? yMultiplier;
  num? xScalarToAdd;
  num? yScalarToAdd;
  List<Callouts>? callouts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['displayName'] = displayName;
    map['narrativeDescription'] = narrativeDescription;
    map['tacticalDescription'] = tacticalDescription;
    map['coordinates'] = coordinates;
    map['displayIcon'] = displayIcon;
    map['listViewIcon'] = listViewIcon;
    map['listViewIconTall'] = listViewIconTall;
    map['splash'] = splash;
    map['stylizedBackgroundImage'] = stylizedBackgroundImage;
    map['premierBackgroundImage'] = premierBackgroundImage;
    map['assetPath'] = assetPath;
    map['mapUrl'] = mapUrl;
    map['xMultiplier'] = xMultiplier;
    map['yMultiplier'] = yMultiplier;
    map['xScalarToAdd'] = xScalarToAdd;
    map['yScalarToAdd'] = yScalarToAdd;
    if (callouts != null) {
      map['callouts'] = callouts?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Callouts {
  Callouts({
      this.regionName, 
      this.superRegionName, 
      this.location,});

  Callouts.fromJson(dynamic json) {
    regionName = json['regionName'];
    superRegionName = json['superRegionName'];
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
  }
  String? regionName;
  String? superRegionName;
  Location? location;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['regionName'] = regionName;
    map['superRegionName'] = superRegionName;
    if (location != null) {
      map['location'] = location?.toJson();
    }
    return map;
  }

}

class Location {
  Location({
      this.x, 
      this.y,});

  Location.fromJson(dynamic json) {
    x = json['x'];
    y = json['y'];
  }
  num? x;
  num? y;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['x'] = x;
    map['y'] = y;
    return map;
  }

}