import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

final networkUriReg = RegExp(r'^https?://');
final localUriReg = RegExp(r'^assets');

class CommonImage extends StatelessWidget {
  const CommonImage(
    this.src, {
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
  });

  final String src;
  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    if (networkUriReg.hasMatch(src)) {
      return Image(
        image: CachedNetworkImageProvider(src),
        width: width,
        height: height,
        fit: fit,
      );
    } else if (localUriReg.hasMatch(src)) {
      return Image.asset(src, width: width, height: height, fit: fit);
    }

    assert(false, '不支持的图片类型');
    return Container(
      
    );
  }
}
