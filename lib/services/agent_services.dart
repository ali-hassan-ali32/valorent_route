
import 'package:dio/dio.dart';

import '../models/agent_model.dart';

class AgentsApi {
  final Dio dio = Dio();

  Future<List<AgentData>> getAgents() async {
    try {
      Response response = await dio.get('https://valorant-api.com/v1/agents');

      Map<String, dynamic> json = response.data;

      List<dynamic> agentsData = json['data'];

      List<AgentData> agents = [];

      for (var agent in agentsData) {
        agents.add(AgentData.fromJson(agent));
      }

      return agents;
    }catch (e){
      return [];
    }
  }


}

