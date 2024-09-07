import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/agent_model.dart';
import '../widgets/ability_card.dart';

class AgentCardPage extends StatelessWidget {
  const AgentCardPage({super.key, required this.agentData});

  final AgentData agentData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0F1923),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          agentData.displayName!,
          style: const TextStyle(fontSize: 24),
        ),
        actions: [
          Image.network(
            agentData.role?.displayIcon ?? '',
            width: 30,
            height: 30,
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: 450,
                width: double.infinity,
                child: CachedNetworkImage(
                  imageUrl: agentData.background ?? '',
                  placeholder: (context, url) => const Center(child: CircularProgressIndicator()),  // Show a progress indicator while loading
                  errorWidget: (context, url, error) => const Icon(Icons.error),      // Show an error icon if the image fails to load
                  fit: BoxFit.cover,  // Ensures the image covers the entire space
                ),
              ),
              Positioned(
                  bottom: 50,
                  right: -50,
                  child: SizedBox(
                    height: 455,
                    child: CachedNetworkImage(
                      imageUrl: agentData.fullPortraitV2 ?? '',
                      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),  // Show a progress indicator while loading
                      errorWidget: (context, url, error) => const Icon(Icons.error),      // Show an error icon if the image fails to load
                      fit: BoxFit.cover,  // Adjust based on your layout needs
                    ),
                  )
              )
            ],
          ),
          const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Description',
                style: TextStyle(color: Colors.white, fontSize: 24),
              )),
          const SizedBox(
            height: 10,
          ),
          Text(
            agentData.description ?? '',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Abilitly',
                style: TextStyle(color: Colors.white, fontSize: 24),
              )),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              AibiltyCard(agentData: agentData, number: 0),
              const SizedBox(width: 15,),
              AibiltyCard(agentData: agentData, number: 1),
              const SizedBox(width: 15,),
              AibiltyCard(agentData: agentData, number: 2),
              const SizedBox(width: 15,),
              AibiltyCard(agentData: agentData, number: 3,)
            ],
          )
        ],
      ),
    );
  }
}

