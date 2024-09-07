import 'package:flutter/material.dart';
import 'package:native_splash/widgets/weapon_card.dart';

import '../models/weapon_model.dart';
import '../services/weapons_api.dart';

class WeaponListBuilder extends StatefulWidget {
  const WeaponListBuilder({
    super.key,
  });
  @override
  State<WeaponListBuilder> createState() => _MapListBuilderState();
}

class _MapListBuilderState extends State<WeaponListBuilder> {
  late Future<List<WeaponData>> futureWeapons;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureWeapons = WeaponApi().getWeapons();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<WeaponData>>(
      future: futureWeapons,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(
              color: Color(0xffFD4556),
            ),
          );
        }

        List<WeaponData> weapons = snapshot.data ?? [];

        if(weapons.isEmpty) {
          return const Center(child: Text('The Maps is Empty'),);
        }

        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: weapons.length,
          separatorBuilder: (context, index) => const SizedBox(height: 50,),
          itemBuilder: (context, index) {
            return WeaponCard(weapon: weapons[index],isRight: (index % 2 == 0));
          },
        );
      },
    );
  }
}


// return CarouselSlider(
//   items: agents.map((e) {
//     return e.fullPortraitV2 != null ? AgentCard(agent: e) : const SizedBox();
//   }).toList(),
//   options: CarouselOptions(
//     height: 501,
//     autoPlay: true, // Enable auto-play
//     enableInfiniteScroll: true,
//   ),
// );
