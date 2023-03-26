import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'sections_header.dart';
import 'slider_item.dart';

class HeaderSlider extends StatefulWidget {
  const HeaderSlider({Key? key}) : super(key: key);

  @override
  State<HeaderSlider> createState() => _HeaderSliderState();
}

class _HeaderSliderState extends State<HeaderSlider> {
  final CarouselController controller = CarouselController();
  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionsHeader(header: 'Breaking News', onPressed: () {}),
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
              height: 160.0,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.8,
              aspectRatio: 3.0,
              initialPage: 0,
              onPageChanged: (val, _) {
                setState(() {
                  activePage = val;
                  controller.jumpToPage(val);
                });
              }),
          items: [0, 1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) => SliderItem(i: i.toString()),
            );
          }).toList(),
        ),
        DotIndicator(
          activeDotColor: Colors.blue,
          dotColor: Colors.blueGrey.shade50,
          currentIndex: activePage,
          itemCount: 6,
        ),
        // InkWell(
        //   onTap: () {
        //     controller.nextPage(
        //         duration: const Duration(milliseconds: 300), curve:   Curves.linear);
        //   },
        //   child: Container(
        //     height: 40,
        //     width: 40,
        //     decoration: const BoxDecoration(
        //       shape: BoxShape.circle,
        //       color: Color(0xff000000),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

class DotIndicator extends StatefulWidget {
  final int itemCount;
  final int currentIndex;
  final Color dotColor;
  final Color activeDotColor;

  const DotIndicator({
    super.key,
    required this.itemCount,
    required this.currentIndex,
    required this.dotColor,
    required this.activeDotColor,
  });

  @override
  DotIndicatorState createState() => DotIndicatorState();
}

class DotIndicatorState extends State<DotIndicator> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(widget.itemCount, (int index) {
        return Container(
          width: widget.currentIndex == index ? 30.0 : 10.0,
          height: 10.0,
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            // shape: widget.currentIndex == index
            //     ? BoxShape.rectangle
            //     : BoxShape.circle,
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            color: widget.currentIndex == index
                ? widget.activeDotColor
                : widget.dotColor,
          ),
        );
      }),
    );
  }
}
