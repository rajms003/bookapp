import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  const CategoryTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),),
          const Text('See more',
          style: TextStyle(
            color: Colors.grey,
          ),)
        ],
      ),
    );
  }
}