import 'package:flutter/material.dart';
import 'package:kenilworth_web/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  final int selectedItemIndex;
  final Function(int) onItemSelected;

  const CustomAppBar({
    Key? key,
    required this.selectedItemIndex,
    required this.onItemSelected,
  })  : preferredSize = const Size.fromHeight(100),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double p30 = screenWidth / 60;
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF000000), Color(0xFF016B90)],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: p30,),
          _navItem(context, 'Home', 0),
          _navItem(context, 'Products and Services', 1),
          _navItem(context, 'About', 2),
          const Spacer(),
          Image.asset('images/logoSmall.png', height: 90),
          const Spacer(),
          _navItem(context, 'Latest Updates', 3),
          _navItem(context, 'Careers', 4),
          _contactButton(context),
          SizedBox(width: p30,),
        ],
      ),
    );
  }

  Widget _navItem(BuildContext context, String text, int index) {
    // Access MediaQuery using the provided BuildContext
    double screenWidth = MediaQuery.of(context).size.width;
    double p30 = screenWidth / 60;

    // Check if the item is selected
    bool isSelected = selectedItemIndex == index;

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: p30), // Use p30 for left padding, for example
      child: TextButton(
        onPressed: () => onItemSelected(index),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? AppColor.flame : Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _contactButton(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double p30 = screenWidth / 60;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: p30),
      child: ElevatedButton(
        onPressed: () {
          // Define the action for when the button is pressed
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppColor.flame,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Text(
          'REACH US',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
