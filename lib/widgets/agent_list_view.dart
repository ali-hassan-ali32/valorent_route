import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/agent_model.dart';
import 'agent_card.dart';
import 'agent_image_not_found.dart';

class AgentListView extends StatelessWidget {
  const AgentListView({
    super.key,
    required this.agents,
  });

  final List<AgentData> agents;

  @override
  Widget build(BuildContext context) {

    return CarouselSlider(
      items: agents.map((e) {
        return e.fullPortraitV2 != null ? AgentCard(agent: e) : const AgentImageError();
      }).toList(),
      options: CarouselOptions(
        height: 501,
        autoPlay: true, // Enable auto-play
        enableInfiniteScroll: true,
      ),
    );
  }
}

