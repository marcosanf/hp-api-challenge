import 'package:flutter/material.dart';

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
    return Center(
      child: Container(
        height: cardHeight,
        width: cardWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
                child: Image.network(
                  imagepath ?? "",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
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
