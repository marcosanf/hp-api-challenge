import 'package:flutter/material.dart';
import 'package:hp_api_challenge/core/app/spaces.dart';

class CharacterCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? imagepath;

  const CharacterCard({
    super.key,
    this.title,
    this.subtitle,
    this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    const cardHeight = 450.0;
    const cardWidth = 250.0;
    const defaultImageSize = 100.0;
    return Center(
      child: Container(
        height: cardHeight,
        width: cardWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(HSpaces.sm),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(HSpaces.sm),
                ),
                child: Image.network(
                  imagepath ?? "",
                  errorBuilder: (context, Object obj, _) {
                    return const Center(
                      child: Icon(
                        Icons.person_outline,
                        size: defaultImageSize,
                      ),
                    );
                  },
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: HSpaces.xs,
                  vertical: HSpaces.xxs,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title ?? ""),
                    Text(subtitle ?? ""),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
