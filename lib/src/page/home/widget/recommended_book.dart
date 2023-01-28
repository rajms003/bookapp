import 'package:bookapp/src/page/home/widget/category_title.dart';
import 'package:bookapp/src/page/home/widget/coming_book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../model/book.dart';

class RecommendedBook extends StatelessWidget {
  final recommendedList = Book.generateRecommendedBook();
  RecommendedBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryTitle(title: 'Recommended for you'),
        SizedBox(
          height: 270,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(20),
              itemBuilder: (_, index) {
                var book = recommendedList[index];
                return Stack(
                  children: [
                    SizedBox(
                      width: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                book.imgUrl!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2),
                            child: Text(
                              book.name!,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              softWrap: false,
                            ),
                          ),
                          Text(book.author!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),)
                        ],
                      ),
                    ),
                    Positioned(
                      top: 8,
                      left: 8,
                      child: _buildIconText(
                      Icons.star,
                      Colors.orange[300]!,
                      '${book.score}'
                    ))
                  ],
                );
              },
              separatorBuilder: (_, index) => const SizedBox(
                    width: 15,
                  ),
              itemCount: recommendedList.length),
        )
      ],
    );
  }


  Widget _buildIconText(IconData icon, Color color, String text) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
            size: 14,
          ),
          const SizedBox(width: 2,),
          Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          )
        ],

      ),
    );
  }
}
