import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../core/values/icons/solid_icons.dart';

class RoundedAvatar extends StatelessWidget {
  final double size;
  final String? imageUrl;
  final BoxDecoration? decoration;
  final bool loading;

  const RoundedAvatar(
    this.imageUrl, {
    super.key,
    this.size = 24,
    this.decoration,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration?.copyWith(shape: BoxShape.circle),
      height: size,
      width: size,
      child: ClipOval(
        child: imageUrl != null
            ? CachedNetworkImage(
                placeholder: (_, __) => _LoadingIndicator(),
                imageUrl: 'https://$imageUrl',
                fit: BoxFit.cover,
                errorWidget: (_, __, ___) => _ErrorWidget(),
              )
            : _ErrorWidget(),
      ),
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.scheme.surface,
      highlightColor: context.scheme.background,
      child: const ColoredBox(color: Colors.white),
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.scheme.tertiaryContainer,
      padding: const EdgeInsets.all(2),
      child: FittedBox(
        fit: BoxFit.cover,
        child: Icon(
          SolidIcons.personcircle,
          color: context.scheme.primary,
        ),
      ),
    );
  }
}
