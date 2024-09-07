import 'package:flutter/material.dart';
import 'package:native_splash/widgets/weaponListBuilder.dart';
import 'package:provider/provider.dart';

import '../providers/main_provider.dart';
import 'agent_list_builder.dart';
import 'map_list_builder.dart';

class CurrentTap extends StatelessWidget {
  const CurrentTap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Selector<MainProvider, int>(
      selector: (p0, p1) => p1.sourceIndex,
      builder: (context, currentTapIndex, child) {
        switch(currentTapIndex) {
          case 0:
            return const AgentListBuilder();
          case 1:
            return const MapListBuilder();
          default:
            return const WeaponListBuilder();
        }
      },
    );
  }
}
