import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/agent_model.dart';

class AibiltyCard extends StatelessWidget {
  const AibiltyCard({super.key, required this.agentData, required this.number});

  final AgentData agentData;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 70,
        height: 70,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            border: Border.all(color: Colors.white)),
        child: CachedNetworkImage(
          imageUrl: agentData.abilities![number].displayIcon ?? '',
          placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()), // Placeholder while loading
          errorWidget: (context, url, error) =>
          const Icon(Icons.error), // Error widget if image fails to load
          fit: BoxFit.cover, // Adjust this based on your desired behavior
        ));
  }
}
