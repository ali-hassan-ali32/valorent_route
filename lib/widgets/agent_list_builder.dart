import 'package:flutter/material.dart';


import '../models/agent_model.dart';
import '../services/agent_services.dart';
import 'agent_list_view.dart';

class AgentListBuilder extends StatefulWidget {
  const AgentListBuilder({
    super.key,
  });

  @override
  State<AgentListBuilder> createState() => _AgentListBuilderState();
}

class _AgentListBuilderState extends State<AgentListBuilder> {
  late Future<List<AgentData>> futureAgents;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureAgents = AgentsApi().getAgents();
  }

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<AgentData>>(
      future: AgentsApi().getAgents(),
      builder: (context, snapshot) {

        List<AgentData> agents = [];

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(
              color: Color(0xffFD4556),
            ),
          );
        }

        agents = snapshot.data ?? [];

        if (agents.isEmpty) {
          return const Center(
            child: Text('The Agents is Empty'),
          );
        }

        return AgentListView(agents: agents);
      },
    );
  }
}
