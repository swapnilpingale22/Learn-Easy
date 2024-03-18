import 'package:flutter/material.dart';
import 'package:learn_easy/utils/constants.dart';

class CustomEventBanner extends StatelessWidget {
  final String asset;
  final String category;
  final String title;
  final String time;
  final Widget widget;
  const CustomEventBanner({
    super.key,
    required this.asset,
    required this.category,
    required this.title,
    required this.time,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 3,
            spreadRadius: 1,
            offset: const Offset(3, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              asset,
              height: 140,
              width: 242,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  category.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: GlobalVariables.primaryColor,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      time,
                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    widget,
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
