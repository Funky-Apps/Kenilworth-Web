import 'package:flutter/material.dart';

class CustomTopic extends StatelessWidget {
  final String topic;
  final Color color;
  const CustomTopic({super.key, required this.topic, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 140,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/arrow.png', height: 120),
          Text(
            topic,
            style: TextStyle(
                fontSize: 32, color: color, fontWeight: FontWeight.w600),
          ),
          SizedBox(width: 120,)
        ],
      ),
    );
  }
}
