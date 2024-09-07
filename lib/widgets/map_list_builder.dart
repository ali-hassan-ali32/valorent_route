import 'package:flutter/material.dart';

import '../models/map_model.dart';
import '../services/map_servises.dart';
import 'map_card.dart';

class MapListBuilder extends StatefulWidget {
  const MapListBuilder({
    super.key,
  });
  @override
  State<MapListBuilder> createState() => _MapListBuilderState();
}

class _MapListBuilderState extends State<MapListBuilder> {
  late Future<List<MapData>> futureMaps;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureMaps = MapApi().getMaps();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MapData>>(
      future: futureMaps,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(
              color: Color(0xffFD4556),
            ),
          );
        }

        List<MapData> maps = snapshot.data ?? [];

        if(maps.isEmpty) {
          return const Center(child: Text('The Maps is Empty'),);
        }

        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: maps.length,
          itemBuilder: (context, index) {
            return MapCard(map: maps[index]);
          },
        );
      },
    );
  }
}

