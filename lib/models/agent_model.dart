class AgentModel {
  AgentModel({
      this.status, 
      this.data,});

  AgentModel.fromJson(dynamic json) {
    status = json['status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(AgentData.fromJson(v));
      });
    }
  }
  num? status;
  List<AgentData>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class AgentData {
  AgentData({
      this.uuid, 
      this.displayName, 
      this.description, 
      this.developerName, 
      this.characterTags, 
      this.displayIcon, 
      this.displayIconSmall, 
      this.bustPortrait, 
      this.fullPortrait, 
      this.fullPortraitV2, 
      this.killfeedPortrait, 
      this.background, 
      this.backgroundGradientColors, 
      this.assetPath, 
      this.isFullPortraitRightFacing, 
      this.isPlayableCharacter, 
      this.isAvailableForTest, 
      this.isBaseContent, 
      this.role, 
      this.recruitmentData, 
      this.abilities, 
      this.voiceLine,});

  AgentData.fromJson(dynamic json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    description = json['description'];
    developerName = json['developerName'];
    characterTags = json['characterTags'];
    displayIcon = json['displayIcon'];
    displayIconSmall = json['displayIconSmall'];
    bustPortrait = json['bustPortrait'];
    fullPortrait = json['fullPortrait'];
    fullPortraitV2 = json['fullPortraitV2'];
    killfeedPortrait = json['killfeedPortrait'];
    background = json['background'];
    backgroundGradientColors = json['backgroundGradientColors'] != null ? json['backgroundGradientColors'].cast<String>() : [];
    assetPath = json['assetPath'];
    isFullPortraitRightFacing = json['isFullPortraitRightFacing'];
    isPlayableCharacter = json['isPlayableCharacter'];
    isAvailableForTest = json['isAvailableForTest'];
    isBaseContent = json['isBaseContent'];
    role = json['role'] != null ? Role.fromJson(json['role']) : null;
    recruitmentData = json['recruitmentData'];
    if (json['abilities'] != null) {
      abilities = [];
      json['abilities'].forEach((v) {
        abilities?.add(Abilities.fromJson(v));
      });
    }
    voiceLine = json['voiceLine'];
  }
  String? uuid;
  String? displayName;
  String? description;
  String? developerName;
  dynamic characterTags;
  String? displayIcon;
  String? displayIconSmall;
  String? bustPortrait;
  String? fullPortrait;
  String? fullPortraitV2;
  String? killfeedPortrait;
  String? background;
  List<String>? backgroundGradientColors;
  String? assetPath;
  bool? isFullPortraitRightFacing;
  bool? isPlayableCharacter;
  bool? isAvailableForTest;
  bool? isBaseContent;
  Role? role;
  dynamic recruitmentData;
  List<Abilities>? abilities;
  dynamic voiceLine;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['displayName'] = displayName;
    map['description'] = description;
    map['developerName'] = developerName;
    map['characterTags'] = characterTags;
    map['displayIcon'] = displayIcon;
    map['displayIconSmall'] = displayIconSmall;
    map['bustPortrait'] = bustPortrait;
    map['fullPortrait'] = fullPortrait;
    map['fullPortraitV2'] = fullPortraitV2;
    map['killfeedPortrait'] = killfeedPortrait;
    map['background'] = background;
    map['backgroundGradientColors'] = backgroundGradientColors;
    map['assetPath'] = assetPath;
    map['isFullPortraitRightFacing'] = isFullPortraitRightFacing;
    map['isPlayableCharacter'] = isPlayableCharacter;
    map['isAvailableForTest'] = isAvailableForTest;
    map['isBaseContent'] = isBaseContent;
    if (role != null) {
      map['role'] = role?.toJson();
    }
    map['recruitmentData'] = recruitmentData;
    if (abilities != null) {
      map['abilities'] = abilities?.map((v) => v.toJson()).toList();
    }
    map['voiceLine'] = voiceLine;
    return map;
  }

}

class Abilities {
  Abilities({
      this.slot, 
      this.displayName, 
      this.description, 
      this.displayIcon,});

  Abilities.fromJson(dynamic json) {
    slot = json['slot'];
    displayName = json['displayName'];
    description = json['description'];
    displayIcon = json['displayIcon'];
  }
  String? slot;
  String? displayName;
  String? description;
  String? displayIcon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['slot'] = slot;
    map['displayName'] = displayName;
    map['description'] = description;
    map['displayIcon'] = displayIcon;
    return map;
  }

}

class Role {
  Role({
      this.uuid, 
      this.displayName, 
      this.description, 
      this.displayIcon, 
      this.assetPath,});

  Role.fromJson(dynamic json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    description = json['description'];
    displayIcon = json['displayIcon'];
    assetPath = json['assetPath'];
  }
  String? uuid;
  String? displayName;
  String? description;
  String? displayIcon;
  String? assetPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['displayName'] = displayName;
    map['description'] = description;
    map['displayIcon'] = displayIcon;
    map['assetPath'] = assetPath;
    return map;
  }

}