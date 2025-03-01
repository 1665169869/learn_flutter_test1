import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:learn_flutter_test1/widgets/common_image.dart';

const List<String> defaultImages = [
  'assets/banner/1.png',
  'assets/banner/2.png',
  'assets/banner/3.png',
];

class CommonSwiper extends StatefulWidget {
  final List<String> images;
  final bool autoplay;
  final double? width;
  final double? height;

  const CommonSwiper({
    super.key,
    this.height,
    this.width,
    this.autoplay = false,
    this.images = defaultImages,
  });

  @override
  State<CommonSwiper> createState() => _CommonSwiperState();
}

class _CommonSwiperState extends State<CommonSwiper> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Swiper(
        itemCount: widget.images.length,
        pagination: SwiperPagination(),
        // control: SwiperControl(),
        autoplay: widget.autoplay,
        itemBuilder:
            (context, index) =>
                CommonImage(widget.images[index], fit: BoxFit.fill),
      ),
    );
  }
}
