import 'package:flutter/material.dart';

import '../colors.dart';

class DiscoverButton extends StatelessWidget {
  const DiscoverButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextButton(
        onPressed: () {
          // Handle button tap
        },
        child: Text(
          'DISCOVER MORE >>',
          style: TextStyle(fontSize: 14,color: AppColor.flame,fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
