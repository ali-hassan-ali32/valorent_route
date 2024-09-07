import 'package:flutter/material.dart';

class AgentImageError extends StatelessWidget {
  const AgentImageError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline_outlined,
            color: Color(0xffFD4556),
            size: 128,
          ),
          SizedBox(height: 10,),
          Text('Image Not Found',style: TextStyle(fontSize: 32,color: Colors.white),)
        ],
      ),
    );
  }
}
