import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

import '../../js_design_kit.dart';
import '../basic/text.dart';

//# 图片缓存 (ANDROID IOS LINUX MACOS WINDOWS)
//cached_network_image: ^3.0.1+1

//# 加载图片占位 (ANDROID IOS LINUX MACOS WINDOWS)
//octo_image: ^1.0.0+1

enum JSImagePlaceholder {
  blur,
  avatar,
  indicator,
}

enum JSImageSource {
  asset,
  file,
  network,
}

class JSImage extends StatelessWidget {
  final JSImageSource? source;

  /// 图片的url (本地或远程)
  final String url;

  final EdgeInsets? margin;

  final JSImagePlaceholder? placeholder;

  final String? avatarText;

  /// 背景色
  final Color? backgroundColor;

  /// 边框颜色
  final Color? borderColor;

  /// 边框宽度
  final double? borderWidth;

  /// 图片颜色
  final Color? color;

  /// 图片大小
  final Size? size;

  /// 图片内容适应模式
  final BoxFit? fitModel;

  final double? borderRadius;

  final bool? showShadow;

  final Function? onTap;

  const JSImage({
    Key? key,
    this.source,
    required this.url,
    this.margin,
    this.placeholder,
    this.avatarText,
    this.backgroundColor,
    this.borderColor,
    this.color,
    this.size,
    this.fitModel,
    this.borderRadius,
    this.borderWidth,
    this.showShadow,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double w = size?.width ?? 80;
    // double h = size?.height ?? 80;

    Widget networkWidget = Container(
      margin: margin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        child: OctoImage(
          width: size?.width,
          height: size?.height,
          image: CachedNetworkImageProvider(url),
          placeholderBuilder: _getOctoPlaceholderBuilder(placeholder: placeholder ?? JSImagePlaceholder.blur),
          errorBuilder: OctoError.icon(color: themeColors.main()),
          fit: fitModel ?? BoxFit.cover,
        ),
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? themeColors.clear(),
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        border: Border.all(color: borderColor ?? themeColors.clear(), width: borderWidth ?? 0.5),
        boxShadow: [BoxShadow(color: (showShadow ?? false) ? themeColors.darkShadow() : themeColors.clear(), blurRadius: 5, offset: Offset(1, 3))],
      ),
    );

    JSImageSource imageSource = source ?? JSImageSource.asset;

    Widget localWidget = Container(
      margin: margin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        child: imageSource == JSImageSource.asset
            ? Image.asset(
                url,
                color: color,
                width: size?.width,
                height: size?.height,
                fit: fitModel,
                scale: 3.0,
              )
            : Image.file(
                File(url),
                color: color,
                width: size?.width,
                height: size?.height,
                fit: fitModel,
                scale: 3.0,
              ),
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? themeColors.clear(),
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        border: Border.all(color: borderColor ?? themeColors.clear(), width: borderWidth ?? 0.5),
      ),
    );

    return url.contains('http')
        ? (onTap != null
            ? GestureDetector(
                onTap: () => onTap!(),
                child: networkWidget,
              )
            : networkWidget)
        : (onTap != null
            ? GestureDetector(
                onTap: () => onTap!(),
                child: localWidget,
              )
            : localWidget);
  }

  OctoPlaceholderBuilder _getOctoPlaceholderBuilder({required JSImagePlaceholder placeholder}) {
    switch (placeholder) {
      case JSImagePlaceholder.blur:
        return OctoPlaceholder.blurHash(
          'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
        );
      case JSImagePlaceholder.avatar:
        return OctoPlaceholder.circleAvatar(
          backgroundColor: themeColors.main(),
          text: JSText(
            avatarText ?? 'JX',
            color: themeColors.white(),
          ),
        );
      case JSImagePlaceholder.indicator:
        return (context) => const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
      default:
        return OctoPlaceholder.circularProgressIndicator();
    }
  }
}
