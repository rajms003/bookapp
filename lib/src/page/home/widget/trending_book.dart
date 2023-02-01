import 'dart:ui';

import 'package:bookapp/src/model/book.dart';
import 'package:bookapp/src/page/home/widget/category_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TrendingBook extends StatelessWidget {
  final trendingList = Book.generateRecommendedBook();
  TrendingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryTitle(title: 'Trending Book'),
        ListView.separated(
            padding: const EdgeInsets.all(20),
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, index) {
              final book = trendingList[index];
              return GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 120,
                  child: Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(book.imgUrl!),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  book.name!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.fade,
                                  maxLines: 1,
                                  softWrap: false,
                                ),
                              ),
                              Icon(
                                Icons.bookmark,
                                color: Colors.orange[300],
                              ),
                            ],
                          ),
                          Text(
                            book.author!,
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            book.desc!,
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false,
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              _buildIconText(
                                Icons.star,
                                Colors.orange[300]!,
                                '${book.score}(${book.review}k)',
                              ),
                              const SizedBox(width: 10),
                              _buildIconText(
                                Icons.visibility,
                                Colors.white,
                                '${book.view}M Read',
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              );
            },
            separatorBuilder: (_, index) => const SizedBox(
                  height: 10,
                ),
            itemCount: trendingList.length)
      ],
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 14,
          color: color,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
