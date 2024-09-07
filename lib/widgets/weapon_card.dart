import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../models/weapon_model.dart';

class WeaponCard extends StatelessWidget {
  const WeaponCard({
    super.key,
    required this.weapon,
    required this.isRight,
  });

  final WeaponData weapon;
  final bool isRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 129,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xff081E34),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 22),
            child: Column(
              crossAxisAlignment: isRight ? CrossAxisAlignment.start : CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  weapon.displayName ?? '',
                  style: const TextStyle(color: Colors.white,fontSize: 36),
                ),
                Text(
                  weapon.shopData?.categoryText ?? '',
                  style: const TextStyle(color: Colors.white,fontSize: 16),
                ),
              ],
            ),
          ),
          Align(
            alignment: isRight ? Alignment.topRight : Alignment.topLeft,
            child: Transform.rotate(
              angle: isRight ? 3.14 / 8 : 5.9475,
              child: Transform.flip(
                flipX: !isRight,
                  child: CachedNetworkImage(
                    imageUrl: weapon.displayIcon ?? '',
                    width: 380,
                    height: 100,
                    placeholder: (context, url) => const SizedBox(
                      width: 380,
                      height: 100,
                      child: Center(child: CircularProgressIndicator(color: Color(0xffFD4556))),
                    ),
                    errorWidget: (context, url, error) => const SizedBox(
                      width: 380,
                      height: 100,
                      child: Center(child: Icon(Icons.error)),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
