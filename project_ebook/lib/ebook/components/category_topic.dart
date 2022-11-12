import 'package:flutter/material.dart';
import 'package:project_ebook/ebook/components/categrory_listview.dart';

class CategoryTopic extends StatelessWidget {
  final String textTopic;

  const CategoryTopic({super.key, required this.textTopic});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            textTopic,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 210,
          child: const CategoryListView(),
        ),
      ],
    );
  }
}
