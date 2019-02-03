import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';

  List<String> images = [
    "https://picsum.photos/200/300",
    "https://picsum.photos/200/300?image=30",
    "https://picsum.photos/200/300?image=50"
  ];

class TopImages extends StatelessWidget {
  List<Widget> pageView;
  TopImages({this.pageView});

  @override
  Widget build(BuildContext context) {
    pageView ??= [];
    List<Widget> el = <Widget>[
      Container(
        height: 150,
        decoration: BoxDecoration(),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return CachedNetworkImage(
              imageUrl: images[index],
              placeholder: LinearProgressIndicator(),
              errorWidget: Icon(Icons.error),
              fit: BoxFit.fill,
            );
          },
          itemCount: images.length,
          pagination:
              SwiperPagination(builder: SwiperPagination.dots),
        )
      ),
      Container(
        color: Colors.white,
        margin: EdgeInsets.only(top: 150),
        child: ListView(
          children: pageView
        )

      )
    ];

    return Stack(
      children: el
    );
  }
}
