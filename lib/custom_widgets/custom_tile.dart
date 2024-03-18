import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_easy/utils/constants.dart';

class CustomTile extends StatelessWidget {
  final String title;
  final String asset;
  const CustomTile({
    super.key,
    required this.title,
    required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: GlobalVariables.primaryColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(asset),
          ),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: GlobalVariables.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
