import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_ebook/ebook/models/bookmodel.dart';

class CatetoryCarouseSlider extends StatefulWidget {
  const CatetoryCarouseSlider({super.key});

  @override
  State<CatetoryCarouseSlider> createState() => _CatetoryCarouseSliderState();
}

class _CatetoryCarouseSliderState extends State<CatetoryCarouseSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: book.length,
        itemBuilder: (context, index, _) {
          final books = book[index];
          return Container(
            width: 150,
            //color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 220,
                  width: 150,
                  //color: Colors.red,
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
                  style: const TextStyle(),
                )),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    books.author ?? '',
                    //style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          );
        },
        options: CarouselOptions(
          //initialPage: 5,
          height: 350,
          //height: 400,
          //aspectRatio: 16 / 9,
          viewportFraction: 0.4,

          // initialPage: 0,
          //enableInfiniteScroll: true,
          //reverse: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          //autoPlayCurve: Curves.fastOutSlowIn,
          //enlargeCenterPage: true,
          //scrollDirection: Axis.horizontal,
        ));
  }
}
