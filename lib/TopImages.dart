import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';

  List<String> images = [
    "https://picsum.photos/200/300?image=1",
    "https://picsum.photos/200/300/?image=30",
    "https://picsum.photos/200/300/?image=50"
  ];

class TopImages extends StatelessWidget {
  List<Widget> pageView;
  TopImages({this.pageView});

  @override
  Widget build(BuildContext context) {
    pageView ??= [];
  //   body: new Stack(
  //     children: <Widget>[
  //       new Container(
  //         decoration: new BoxDecoration(
  //           image: new DecorationImage(image: NetworkImage(images[0]),fit: BoxFit.cover,),
  //         ),
  //       ),
  //       new Center(
  //         child: new Text("Hello background"),
  //       )
  //     ],
  //   )
  // );
    List<Widget> el = <Widget>[
      Container(
        height: 150,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
              images[index],
              fit: BoxFit.fill,
            );
          },
          itemCount: images.length,
          pagination:
              new SwiperPagination(builder: SwiperPagination.dots),
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
