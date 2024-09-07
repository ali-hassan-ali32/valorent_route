import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/map_model.dart';

class MapCard extends StatelessWidget {
  const MapCard({
    super.key,
    required this.map,
  });

  final MapData map;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 225,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Stack(children: [
        Container(
          width: double.infinity,
          height: 225,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
              image: CachedNetworkImageProvider(map.listViewIcon ?? ''),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red.withOpacity(0.2),
          ),
          child: Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  map.displayName ?? '',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              CachedNetworkImage(
                imageUrl: map.displayIcon ?? '',
                width: 190,
                height: 190,
                placeholder: (context, url) => Image.asset('assets/logo-icon.png'),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
