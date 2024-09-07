import 'package:dio/dio.dart';

import '../models/weapon_model.dart';

class WeaponApi {
  final Dio dio = Dio();

  Future<List<WeaponData>> getWeapons() async {
    Response response = await dio.get('https://valorant-api.com/v1/weapons');
    Map<String, dynamic> json = response.data;
    List<dynamic> weaponsData = json['data'];
    List<WeaponData> weapons = [];

    for(var weapon in weaponsData) {
      weapons.add(WeaponData.fromJson(weapon));
    }

    return weapons;
  }
}