import 'package:flutter/material.dart';
import 'package:project_ebook/ebook/models/bookmodel.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final Book books = book[index + 1];
        return Container(
          width: 150,
          height: 200,
          //height: 150,
          //color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 130,
                width: 100,
                // color: Colors.red,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    books.imageUrl ?? '',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Text(
                  books.title ?? '',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'Tác giả: ${books.author ?? ''}',
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        );
      },
      itemCount: book.length - 7,
      separatorBuilder: (context, index) => const SizedBox(
        width: 12,
      ),
    );
  }
}
