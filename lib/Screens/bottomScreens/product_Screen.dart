import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:leof/widgets/popup_productdetails.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  final List<String> imagelist = [
    "images/img2.jpg",
    "images/img3.jpg",
    "images/img7.jpg",
    "images/img18.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 450,
              width: MediaQuery.of(context).size.width,
              child: FanCarouselImageSlider(
                imagesLink: imagelist,
                isAssets: true,
                sliderHeight: 430,
                autoPlay: true,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "kinfoo",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w900,
                        fontSize: 25),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "jambo",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
                Text(
                  "\u20B9899",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color.fromARGB(255, 21, 207, 27),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 25,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                " japanese kinfoo dress selection for the very best\n in unique or custom, handmade pieces.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 59,
                  width: 59,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(31, 104, 101, 101),
                      borderRadius: BorderRadius.circular(28)),
                  child: Center(
                    child: Icon(
                      Icons.shopping_cart,
                      color: Color.fromARGB(255, 21, 207, 27),
                    ),
                  ),
                ),
                PopupDetailsproduct(),
              ],
            )
          ],
        ),
      ))),
    );
  }
}
