import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel_Slider extends StatelessWidget {
  List<String> images = [
    "https://resimdiyari.com/upload/2012/06/26/20120626164619-35013790.jpg",
    "https://resimdiyari.com/upload/2012/06/26/20120626164615-ccf2f073.jpg",
    "https://i.pinimg.com/736x/31/77/1a/31771a03e8ca17c22901f50c20dc1890.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Widget Usage"),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://resimdiyari.com/upload/2012/06/26/20120626164619-35013790.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://resimdiyari.com/upload/2012/06/26/20120626164615-ccf2f073.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://i.pinimg.com/736x/31/77/1a/31771a03e8ca17c22901f50c20dc1890.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 800,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 24 / 4,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
