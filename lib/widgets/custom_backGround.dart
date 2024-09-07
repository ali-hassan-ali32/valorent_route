import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/main_provider.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key, required this.childWidget});

  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Color(0xff0F1923)),
      child: ChangeNotifierProvider(
        create: (context) => MainProvider(),
        builder: (context, child) => Scaffold(
          backgroundColor: Colors.transparent,
          body: Consumer<MainProvider>(
            builder: (context, value, child) => Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 48.0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset('assets/logo-icon.png'),
                        Positioned(
                            bottom: -25,
                            child: Image.asset('assets/logo-text.png')),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 49,
                ),
                DefaultTabController(
                    length: 3,
                    child: TabBar(
                      indicatorColor: const Color(0xff0F1923),
                      onTap: value.setSource,
                      labelPadding: EdgeInsets.zero,
                      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
                      tabs: [
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 32),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: value.sourceIndex == 0 ? const Color(0xffFD4556): Colors.transparent,
                            ),
                            child: const Text('Agent',style: TextStyle(fontSize: 25),),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 32),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: value.sourceIndex == 1 ? const Color(0xffFD4556) : Colors.transparent,
                            ),
                            child: const Text('Maps',style: TextStyle(fontSize: 25),),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: value.sourceIndex == 2 ? const Color(0xffFD4556) : Colors.transparent,
                            ),
                            child: const Text('Weapons',style: TextStyle(fontSize: 25),),
                          ),
                        ),

                      ],
                    )),
                Expanded(child: childWidget),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
