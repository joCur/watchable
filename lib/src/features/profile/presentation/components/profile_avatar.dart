import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String? url;

  const ProfileAvatar(this.url, {super.key});

  Widget _buildLoadingWidget() {
    return const CircleAvatar(child: Icon(Icons.person));
  }

  @override
  Widget build(BuildContext context) {
    return url == null
        ? _buildLoadingWidget()
        : CachedNetworkImage(
            imageUrl: url ?? "",
            imageBuilder: (context, imageProvider) => CircleAvatar(backgroundImage: imageProvider),
            placeholder: (context, url) => _buildLoadingWidget(),
            errorWidget: (context, url, error) => _buildLoadingWidget(),
          );
  }
}
