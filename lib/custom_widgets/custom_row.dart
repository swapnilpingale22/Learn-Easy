// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String title;
  const CustomRow({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          const Row(
            children: [
              Text(
                "View all",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              Icon(
                Icons.arrow_right_alt,
                color: Colors.black45,
              ),
            ],
          )
        ],
      ),
    );
  }
}
