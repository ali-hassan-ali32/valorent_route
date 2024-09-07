import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/agent_model.dart';
import '../pages/agent_card_page.dart';
import '../pages/home_page.dart';

class AgentCard extends StatelessWidget {
  const AgentCard({
    super.key,
    required this.agent,
  });

  final AgentData agent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AgentCardPage(agentData: agent),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(clipBehavior: Clip.none, children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              height: 430,
              width: 280,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors:
                        hexToColorList(agent.backgroundGradientColors ?? []),
                  ),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(72),
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.circular(80))),
            ),
            Positioned(
                bottom: 10,
                left: -80,
                child: SizedBox(
                  width: 500,
                  height: 600,
                  child: CachedNetworkImage(
                    imageUrl: agent.fullPortraitV2 ?? '',
                    placeholder: (context, url) => Image.asset('assets/logo-icon.png'), // Placeholder while loading
                    errorWidget: (context, url, error) => const Icon(Icons.error),     // Error widget if image fails to load
                    fit: BoxFit.cover,  // Similar to the behavior of Image.network
                  ),
                )
            ),
            Positioned(
                bottom: 40,
                left: 30,
                child: Text(
                  agent.displayName ?? '',
                  style: const TextStyle(color: Colors.white, fontSize: 36),
                ))
          ]),
        ],
      ),
    );
  }
}
